import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/screen/pagesPassword/forgot_verification.dart';
import 'package:flutter_application_finsh/components/screen/register.dart';

class forgotPassword extends StatelessWidget {

  var emailController=TextEditingController();
          
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'For Security purposes,no withdrawals are permitted \n         for 24 hourse after password changed',
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
                Text(
                  'Enter the account Email',
                ),
                SizedBox(
                  height: 05.0,
                ),
                TextFormField(
                    controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value)
                        {
                          print(value);
                        },
                        onChanged: (value)
                        {
                          print(value);
                        },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(),
                      ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                     Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: ()
                      {
                         final route = MaterialPageRoute(builder: (context)=>Security_vervication());
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
        ),
    );
  }
}