
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'معدل نبضات القلب الهدف'
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
                  'Target Heart rate (THR or training heart rate) means the suggested range of how often your heart beats during exercise for improving health. It is an important index for you to exercise safely.',
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
                  'Your THR depends on the highest number of times your heart can beat in one minute, which is your maximum heart rate. Generally speaking, a man is estimated maximum heart rate can be calculated as 220 minus his age. if you are a woman, based on research conducted by Northwestern Medicine, you can use the equation HRmax=206-(0.88 x your age ) to get an accurate result \n \n Specifically, if you are doing a moderate-intensity activity, your THR should be between 50% to 70% of your maximum heart rate. if you are doing vigorous exercise, your THR should be between 70% to 85% of your maximum heart rate.\n\n For instance, a 40-year-old man is maximum heart rate is 220 minus 40, which is 180. The THR should be 50% to 85% of 180, in other words,90 to 153 beats per minute.',
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
                  'If you are training to burn body fat or improve your cardiovascular health, you can use our app to get more accurate and scirntific THR automatically. you can skip the math mentioned above and input your age and gender whether you are doing warm-up,moderate training, high-intensity training, or an extremely vigorous workout.',
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