import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/layout/cubit/AppCubit.dart';
import 'package:flutter_application_finsh/models/face_detection.dart';
import 'package:flutter_application_finsh/pages/pagescreen1/pageecreen1.dart';
import 'package:flutter_application_finsh/pages/pagescreen2/pageecreen2.dart';
import 'package:flutter_application_finsh/pages/pagescreen3/pageecreen3.dart';
import 'package:provider/provider.dart';




class newInformation extends StatefulWidget {
  @override
  State<newInformation> createState() => _newInformationState();
}

class _newInformationState extends State<newInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Info'
          ),  
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton.icon(
                      onPressed: () {
                      final route = MaterialPageRoute(builder: (context)=>pageScreen1());
                     Navigator.push(context, route);
                    },
                      icon: Icon(Icons.favorite),
                      label: Text(
                        "Heart Rate",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton.icon(
                      onPressed: () {
                    final route = MaterialPageRoute(builder: (context)=>pageScreen2());
                     Navigator.push(context, route);
                      },
                      icon: Icon(Icons.healing),
                      label: Text(
                        "Heart Beat Causes",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton.icon(
                      onPressed: () {
                   final route = MaterialPageRoute(builder: (context)=>pageScreen3());
                     Navigator.push(context, route);
                      },
                      icon: Icon(Icons.fitness_center),
                      label: Text(
                        "Healthy Lifestyle",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: GestureDetector(
  onTap: () {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => VideoRecorderWidget(),
        // builder: (_) => LearningFaceDetection(),
      ),
    );
  },
  child: Image.asset(
    "assets/images/heartbeat.gif",
    width: 150,
    height: 150,
  ),
),

            ),
          ],
        ),
      ),
    );
  }
}


// class newInformation extends StatelessWidget {
//   List catNames=[
//     'Heart Rate',
//     'Heartbeat causes',
//     'Healthy Lifestyle',
//   ];

//   List <Icon>catIcons=[
//     Icon(MdiIcons.heart),
//     Icon(MdiIcons.smokingOff ),
//     Icon(MdiIcons.hail),
//   ];

//   void selectScreen(BuildContext ctx) {
//     Navigator.of(ctx).push(MaterialPageRoute(builder: (c) {
//       return ScreenInfo();
//     }));
//   }


//   @override
//   Widget build(BuildContext context) {
  
//       return Scaffold(

//         body: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               height: 100,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: catNames.length,
//                 itemBuilder: (context,index){
//                   return Column(
//                     children: [
//                       Container(
                      
//                         margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 4,
//                               spreadRadius: 2,
                            
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                           child: catIcons[index],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         catNames[index],
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
                          
//                         ),
//                       ),
//                     ],
//                   );
//                 }
//               ),
//             ),
//           ),
//         ),


//       );

//   }
// }
