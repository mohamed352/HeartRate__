import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ما هو معدل نبضات القلب',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
              ),
              color: Color.fromARGB(255, 62, 84, 100),
              // margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  'Your heart rate,or pluse,is the number of times your heart beates per unit of time, usually a minute',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Color.fromARGB(255, 62, 84, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  'Each time the heart beats,blood is pumped out of the heart and into the body to supply oxygen to body funvtioning.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 62, 84, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  'Since the need for oxygen changes when people are under different states, such as resting,exercising,etc,the workload of the heart to circulate blood changes.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Color.fromARGB(255, 62, 84, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  'There are two different heart rate indexes,resting heart rate and target heart rate.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 62, 84, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  'One is for measuring how your heart beats when you are at rest. The other one is used to know what your ideal target heart rate is during exercise.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF27374D),
    );
  }
}
