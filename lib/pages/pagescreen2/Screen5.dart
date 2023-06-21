
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'امراض القلب الشائعة'
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
                  'Serveral types of condtioins affecting heart structure or function can be collectively called heart disease. According to the National Library of Medicine, heart disease is the U.S. What needs to be mentioned is that there are many types of heart disease that are caused by different roots. Find out common types of them by reading on.',
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
                      'Congenital Heart Disease',
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
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 62, 84, 100),
                child: Text(
                  'Congenital heart disease, also called congenital heart defect, is a kind of heart problem that presents as birth. Atypical heart valves, Septal of congenital heart diseases. Some congenital heart defects can never be diagnosed as they may not cause any symptoms.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  ),
              ),
                SizedBox(
                  height: 15,
                ),
                  Container(
                    color: Color.fromARGB(255, 62, 84, 100),
                    child: Text(
                      'Coronary Artery Disease(CAD)',
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
                      'Coronary artery disease is the most common heart disease. People with it have narrow or blocked coronary arteriers, or stroke. Usually, atherosclerosis, a condition sometimes called hardening of the arteries, is the main cause of CAD as it reduces blood flow and decreases oxygeb and nutrients that the heart receives.',
                      style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                                  ),
                      ),
                  ),   
                                      
            ],
          ),
        ),
      ),
        backgroundColor: Color(0xFF27374D),  
    );
  }
}