import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/components.dart';
import 'package:flutter_application_finsh/components/screen/login_screen.dart';
import 'package:flutter_application_finsh/components/screen/register.dart';

class NewPassword extends StatefulWidget {

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
    var nameController =TextEditingController();
  var lastNameController = TextEditingController();

  var emailController =TextEditingController();

  var PasswordController =TextEditingController();
  var ConformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
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
                  'New Password',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
        
                             SizedBox(
                     height: 15.0,
                  ),
                                  Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                  height: 80,
                  thickness: 1.5,
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
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                    ),
                
                  ),
                             SizedBox(
                     height: 15.0,
                  ),
                      defultFormFiled(
              controller: PasswordController,
              label: 'Password',
              prefix: Icons.lock,
              suffix: isPasswordShow ? Icons.visibility : Icons.visibility_off,
              isPassword: isPasswordShow,
              suffixPressed: ()
              {
                setState(() {
                  isPasswordShow=!isPasswordShow;
                });
              },
              type: TextInputType.visiblePassword,
              validate: (value)
              {
                if(value.isEmpty)
                {
                  return 'password must not be empty';
                }
                return null;
              },
           ),
                             SizedBox(
                     height: 15.0,
                  ),
             defultFormFiled(
              controller: ConformPasswordController,
              label: 'Conform Password',
              prefix: Icons.lock,
              suffix: isPasswordShow ? Icons.visibility : Icons.visibility_off,
              isPassword: isPasswordShow,
              suffixPressed: ()
              {
                setState(() {
                  isPasswordShow=!isPasswordShow;
                });
              },
              type: TextInputType.visiblePassword,
              validate: (value)
              {
                if(value.isEmpty)
                {
                  return 'password must not be empty';
                }
                return null;
              },
           ),
                  SizedBox(
                    height: 40.0,
                  ), 
                
                     Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: ()
                      {
                        print(emailController.text);
                      },
                      child: Text(
                        'Continue',
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
    );
  }
}