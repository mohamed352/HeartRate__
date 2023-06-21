
import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعقيدات معدل نبضات القلب المرتفعة  '
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
                  'Usually, your heart rate can occasionally exceed the normal range, which is normal when you are exercising, under stress, or has a related disease.',
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
                      'However, if your resting heart rate rises over 100 beats per minute not because of psychological stress, it may be a sign of a serious heart condition, tachycardia, which can increase the risk of stroke,heart failue,sudden cardiac arrest,and even death.',
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
                  'There was a study conducted by the Copenhagen Male Study in 1971, which monitored,3,000 middle-aged men is,health and resting heart rate 16 years They discoverd that every 10 to 22 increase in resting heart rate per minute raised the risk of death by 16%.For instance,people who had a resting heart rate over 90 beats per minuter elevated their risk of death by 120% to 150%.',
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
                      'Except for the high risk of death, there are also complications of a high resting heart rate. Some people with tachycardia may not experience any symptoms or complications. However, others may have some complications that are triggered by a rapid heartbeat.',
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
                    child: Text(
                      'Complications of tachycardia',
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
                      'Fainting\nDizziness\nShortness of breath\nFatigue\nAngina\nHeart palpitations\nHeart failure\nStroke\nBlood clots\nCardiac arrest\nSudden death\n\n\nIf you exerience extreme pain of discomfort with you palpitations,seek emergency help immediately.',
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