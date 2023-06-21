import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/screen/pagesPassword/new_password.dart';
import 'package:flutter_application_finsh/components/screen/register.dart';

class Security_vervication extends StatelessWidget {

  var emailController=TextEditingController();
          
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[
              Text(
                'Heart Rate',
                style:TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 05.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(onPressed: (){
                      final route = MaterialPageRoute(builder: (context)=>registerScreen());
                       Navigator.push(context, route);
                  },
                   child: Text(
                    'Register Now',
                   ),
                   ),
                   
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                'Security Verification',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
               Text(
                'Enter the 4 digit code received by',
               ),
               SizedBox(
                height: 10,
               ),
               Text(
                'm*t2@gmail.com'
               ),
                     Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                  height: 80,
                  thickness: 1.5,
                ),
              SizedBox(
                height: 40.0,
              ),

              Container(
                child: Row(
                  children: [
                    // i want to 4 digit num
                  ],
                ),
              ),
              
                   Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: ()
                    {
                 final route = MaterialPageRoute(builder: (context)=>NewPassword());
                       Navigator.push(context, route);
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Nevermind,I got it',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
    );
  }
}