import 'package:flutter/material.dart';




class signUp extends StatelessWidget {
static const String id = "sign-up";

  
   
   
  var emailController=TextEditingController();
  var PasswordController=TextEditingController();
  var conformPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Heart Rate',
                    style: TextStyle(
                      fontSize:30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?'
                    ),
                    TextButton(onPressed: (){},
                     child: Text(
                      'Login'
                     ), 
                    ),
                  ],
                ),
                Text(
                  'Sing up',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Use your OpenID to Sign up',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                 
                 


                  TextFormField(),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Or continue with email',
                  ),
                  SizedBox(
                    height: 20.0,
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
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: PasswordController,
                     obscureText: true,
                    decoration: InputDecoration(
                       labelText: 'Password',
                       prefixIcon: Icon(
                        Icons.lock,
                       ),
                       suffixIcon: Icon(
                        Icons.remove_red_eye,
                       ),
                       border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: conformPasswordController,
                     obscureText: true,
                    decoration: InputDecoration(
                       labelText: 'Conform Password',
                       prefixIcon: Icon(
                        Icons.lock,
                       ),
                       suffixIcon: Icon(
                        Icons.remove_red_eye,
                       ),
                       border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: ()
                    {
                      print(emailController.text);
                      print(PasswordController.text);
                      print(conformPasswordController.text);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}