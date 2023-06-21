import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/screen/login_screen.dart';
import 'package:flutter_application_finsh/components/screen/register.dart';


class Home extends StatefulWidget {
  static const String id = 'Home';

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = ColorTween(begin: Colors.blueAccent, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Heart Rate App ',
          style: TextStyle(
            color: Colors.white
          ),  
        ),
        
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.only(),
        child: Container(
                    decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/9e5c0a1fa8fb77f6-.gif"),
              fit: BoxFit.contain,
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 250.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed((context), LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'LOGIN ',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed((context), registerScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      ' Register',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}