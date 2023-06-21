
import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' تعرف علي انخفاض ضغط الدم '
        ),
      ),
      body: Padding(
      padding: const EdgeInsets.only(top:50,left: 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                color: Color.fromARGB(255, 62, 84, 100),
                child: Text(
                  
                  'Hypotension is a condition that blood pressure is consistently lower than 90/60 mmHg or falls suddenly over 20 mmHg.\n Hypotension with no symptoms usually does not need treatment. Nevertheless,\n accurate diagnosis and categorized therapies are needed if symptoms or sudden fall emerges. Read on to see all types and causes of hypotension. ',
                style: TextStyle(
                   fontSize: 25,
                    color: Colors.white,
                ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 62, 84, 100),
                child: Text(
                      'Understanding Hypotension Symptoms.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Color.fromARGB(255, 62, 84, 100),
                child: Text(
                  'Hypotension symptoms include\n\n\n\n Blurred vision\nDizziness or fainting\n Inability to concentrate\n Neausea\n Rapid breathing\n Fatigue. ',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  ),
              ),
                SizedBox(
                  height: 15,
                ),
                                      
            ],
          ),
        ),
      ),
        backgroundColor: Color(0xFF27374D),  
    );
  }
}