import 'package:flutter/material.dart';

class LearningHome extends StatefulWidget {
  @override
  _LearningHomeState createState() => _LearningHomeState();
}

class _LearningHomeState extends State<LearningHome> {
  Widget _menuItem(String text, Widget page) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        title: Text(text),
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Machine Learning Kit'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // _menuItem(
            //   'Face Detection'
            //   // ChangeNotifierProvider(
            //   //   create: (_) => LearningFaceDetectionState(),
            //   //   child: LearningFaceDetection(),
            //   // ),
            // ),
          ],
        ),
      ),
    );
  }


}