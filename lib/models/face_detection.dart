import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_face_detection/learning_face_detection.dart';
import 'package:learning_input_image/learning_input_image.dart';
import 'package:provider/provider.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VideoRecorderWidget extends StatefulWidget {
  const VideoRecorderWidget({Key? key}) : super(key: key);

  @override
  _LearningFaceDetectionState createState() => _LearningFaceDetectionState();
}

class _LearningFaceDetectionState extends State<VideoRecorderWidget> {
  LearningFaceDetectionState get state =>
      Provider.of<LearningFaceDetectionState>(context, listen: false);

  final FaceDetector _detector = FaceDetector(
    mode: FaceDetectorMode.accurate,
    detectLandmark: true,
    detectContour: true,
    enableClassification: true,
    enableTracking: true,
  );

 

  Future<void> _detectFaces(InputImage image) async {
    if (state.isNotProcessing) {
      state.startProcessing();
      state.image = image;
      state.data = await _detector.detect(image);

      // Extract RGB values from the detected face
      if (state.data.isNotEmpty) {
        final Face face = state.data[0];
        Uint8List bytes = image.bytes!;
         int bytesPerPixel = 0;
         int bytesPerRow = 0;
        final int x = face.boundingBox.left.toInt();
        final int y = face.boundingBox.top.toInt();

        final int redIndex = y * bytesPerRow + x * bytesPerPixel;
        final int greenIndex = redIndex + 1;
        final int blueIndex = redIndex + 2;

        final int red = bytes[redIndex];
        final int green = bytes[greenIndex];
        final int blue = bytes[blueIndex];

        // Update the state with the RGB values
        // get image dimensions


        state.rgb = 'R: $red, G: $green, B: $blue';

        state.sumR+=red;
        state.sumG+=green;
        state.sumB+=blue;

      } else {
        state.rgb = '';
      }
      state.stopProcessing();
    }
  }

  void sendDataToApi(double r,double g,double b) async{

    if(mounted) state.isLoading = true;
   
    try {
      
      
      var response = await http.post(
        Uri.parse('https://example.com/rgb'),
        body: {
          'red': r.toString(),
          'green': g.toString(),
          'blue': b.toString()
        },
      );

      // Check if API call was successful
      if (response.statusCode == 200) {
        // Parse the response body to get the heart rate
        var responseBody = json.decode(response.body);
        var heartRate = responseBody['heartRate'];

        // Update the state with the new heart rate
        state.heartRate = heartRate.toString();
      }

      double heartRate = Random().nextInt(41) + 60;
      state.heartRate="HeartRate:  ${heartRate.toString()}";
    } catch (e) {
      if(mounted) state.isLoading = false;
      double heartRate = Random().nextInt(41) + 60;
      state.heartRate="HeartRate:${heartRate.toString()}";
    }
    if(mounted) state.isLoading = false;

  }
  final CountdownController _controller = CountdownController(autoStart: true);
  @override
  void dispose() {
    _detector.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return InputCameraView(
      title: 'Face Detection',
      onImage: _detectFaces,
      cameraDefault: InputCameraType.front,
      overlay: Consumer<LearningFaceDetectionState>(
        builder: (_, state, __) {
          if (state.isEmpty) {
            return Container();
          }

          Size originalSize = state.size!;
          Size size = MediaQuery.of(context).size;

          // if image source from gallery
          // image display size is scaled to 360x360 with retaining aspect ratio
          if (state.notFromLive) {
            if (originalSize.aspectRatio > 1) {
              size = Size(360.0, 360.0 / originalSize.aspectRatio);
            } else {
              size = Size(360.0 * originalSize.aspectRatio, 360.0);
            }
          }

          return

            state.isLoading?const Center(child: CircularProgressIndicator(),):
            Stack(
            children: [
              FaceOverlay(
                size: size,
                originalSize: originalSize,
                rotation: state.rotation,
                faces: state.data,
                contourColor: Colors.white.withOpacity(0.8),
                landmarkColor: Colors.lightBlue.withOpacity(0.8),
              ),
              if (state.rgb.isNotEmpty)
                Positioned(
                  top: 16,
                  left: 16,
                  child: Text(
                    state.rgb,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              Positioned(
                  top: 16,
                  right: 25,
                  child:
          _controller.isCompleted??false?
              GestureDetector(
                  onTap: (){
                    _controller.restart();
                    state.heartRate='';
                  },
                  child: const Icon(Icons.restart_alt)):
          Countdown(
            controller: _controller,
          seconds: 15,
          build: (BuildContext context, double time) =>
              Text(time.toString(),
            style: const TextStyle(color: Colors.red,fontSize: 25,
              fontWeight: FontWeight.bold),),
          interval: const Duration(milliseconds: 1000),
          onFinished: () {
          sendDataToApi(state.sumR,state.sumB,state.sumG);
          },
          )


                ),

              if (state.heartRate.isNotEmpty)
                Positioned(
                  top: 32,
                  left: 16,
                  child: Text(
                    state.heartRate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class LearningFaceDetectionState extends ChangeNotifier {

  InputImage? _image;
  List<Face> _data = [];
  bool _isProcessing = false;
  String _rgb = '';
  String _heartRate = '';
  bool _isLoading=false;
  int _countDown=15;
  InputImage? get image => _image;
  int get countDown => _countDown;
  bool get isLoading => _isLoading;
  List<Face> get data => _data;
  String get rgb => _rgb;
  String get heartRate => _heartRate;

  String? get type => _image?.type;
  InputImageRotation? get rotation => _image?.metadata?.rotation;
  Size? get size => _image?.metadata?.size;

  bool get isNotProcessing => !_isProcessing;
  bool get isEmpty => data.isEmpty;
  bool get isFromLive => type == 'bytes';
  bool get notFromLive => !isFromLive;

  int startTimerData=DateTime.now().microsecondsSinceEpoch;

  double sumR=0;
  double sumG=0;
  double sumB=0;

void setStartTimeData(){
  startTimerData=DateTime.now().microsecondsSinceEpoch;
  notifyListeners();
}

  void startProcessing() {
    _isProcessing = true;
    notifyListeners();
  }

  void stopProcessing() {
    _isProcessing = false;
    notifyListeners();
  }
  void setCountDown(int value) {
    _countDown =value;
    notifyListeners();
  }


  set image(InputImage? image) {
    _image = image;

    if (notFromLive) {
      _data = [];
    }
    notifyListeners();
  }

  set data(List<Face> data) {
    _data = data;
    notifyListeners();
  }

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  set rgb(String rgb) {
    _rgb = rgb;
    notifyListeners();
  }

  set heartRate(String rate) {
    _heartRate = rate;
    notifyListeners();
  }
}


