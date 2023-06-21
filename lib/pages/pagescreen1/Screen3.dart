
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعقيدات معدل نبضات القلب المرتفعه '
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
                  'Usually,your heart rate can occasionally exceed the normal range, which is normal when you are exercising, under stress, or has a related disease.',
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
                  'However, if you resting heart rate rises over 100 baets per minute not because of psychological stress, it may be a sign of a serious heart condition, tachycardia, which can increase the risk of stroke, heart failure, sudden cardiac arrest, and even death. \n There was a study conducted by Copenhagen Male Study in 1971, which monitored 3,000 middle-aged men\'s .health and resting heart rate for 16 years They discovered that every 10 to 22 increase in resting heart rate per minute raised the risk of death by 16%. For instance, people who had a resting heart rate over 90 beats per minute elevated. their risk of death by 120% to 150%   Expect for the high risk of daeth, there are also complications of a high resting heart rate. Some people with tachycardia may not experience any symptoms or complications. However, other may have some complications that are triggered by a rapid heartbeat.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
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
                  'Complicatoins of tackycardia:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
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
                      'Fainting.\n Dizzines.\n Shortness of breath.\n Fatigue.\n Angina.\n Heart papitatoins.\n Heart failure.\n Stoke.\n Blood clots.\n Cardiac arrest.\n Sudden death.\n\n If you experience extreme pain or discomfort with your palpitations, seek emergency help immediately.',
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