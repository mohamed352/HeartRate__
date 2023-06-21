import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/pages/pagescreen2/Screen5.dart';
import 'package:flutter_application_finsh/pages/pagescreen2/Screen6.dart';
import 'package:flutter_application_finsh/pages/pagescreen2/Screen7.dart';
import 'package:flutter_application_finsh/pages/pagescreen2/Screen8.dart';
import 'package:page_transition/page_transition.dart';

class pageScreen2 extends StatelessWidget {
  const pageScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255,250 ,182, 1),
                    Color.fromRGBO(255,239, 78, 1),
                  ]
                  ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>
                    [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>
                           [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Information & Knowledge',style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              flex: 3,
                              child: Image.asset('assets/images/hr.png'),
                            ),
                           ],
                        )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

        Container(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                makeCard(
                  context: context,
                  startColor: Color.fromRGBO(252, 212, 155, 1),
                  endColor: Color.fromRGBO(251, 53, 105, 1),
                  image: 'assets/images/heart-rate.png',
                    title: "امراض القلب الشائعة",
                    onTap: (){
                    Navigator.push(
                        context,
                        PageTransition(type: PageTransitionType.fade,
                            child:Screen5()
                        )
                    );
                  }
                ),
                makeCard(
                  context: context,
                  startColor: Color.fromRGBO(203, 251, 255, 1),
                  endColor: Color.fromRGBO(81, 233, 234, 1),
                  image: 'assets/images/heart-attack.png',
                    title: "تعقيدات معدل نبضات القلب المرتفعة",
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(type: PageTransitionType.fade,
                              child: Screen6()
                          )
                      );
                    }
                ),
                makeCard(
                  context: context,
                  startColor: Color.fromRGBO(255, 204, 128, 1),
                  endColor: Color.fromRGBO(255, 107, 107, 1),
                  image: 'assets/images/heart-rate.png',
                    title: "  Complications of    elevated HR",

                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(type: PageTransitionType.fade,
                              child: Screen7()
                          )
                      );
                    }
                ),
                makeCard(
                  context: context,
                  startColor: Color.fromRGBO(217, 237, 247, 1),
                  endColor: Color.fromRGBO(126, 214, 223, 1),
                  title: "Target heart rate",
                  image: 'assets/images/heart-rate.png',
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(type: PageTransitionType.fade,
                              child: Screen8()
                          )
                      );
                    }
                ),
              ],
            ),
          ),
        )
          ],
        ),
      ),
    );
  }

  Widget makeCard({context,startColor,endColor,image,required Function() onTap,required title}){

    return GestureDetector(
      onTap:onTap,
      child: AspectRatio(
        aspectRatio:1,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                startColor,
                endColor,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(5, 10),
              )
            ]
          ),
          child: Padding(
            padding:EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(child: Image.asset(image),),
                ),
                SizedBox(height: 10,),
                Text(title,style: TextStyle(color: Colors.white),)
              ],
            ),
            ),
        ),
      ),
    );

  }

}