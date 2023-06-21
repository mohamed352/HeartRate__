import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/components.dart';
import 'package:flutter_application_finsh/components/screen/pagesPassword/forgot_password.dart';
import 'package:flutter_application_finsh/layout/home_layout.dart';


class LoginScreen extends StatefulWidget {
  static const String id = "login_Screen";
  
 
 bool isDark=false ;
  

  @override
  _LoginState createState() => _LoginState();


}
  var emailController =TextEditingController();
  var PasswordController=TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow=true;


class _LoginState extends State<LoginScreen> {
  var password, email;
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        SizedBox(
          height: 100,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero(
            //   tag: "Logo",
            //   child: Container(
            //       height: 200.0,
            //       child: Image.asset(
            //         "images/logo.png",
            //       )),
            // ),
            Container(
              padding: EdgeInsets.all(20),
              child: Form(
                
                  child: Column(
                    children: [
                                        Text(
                    'Heart Rate',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        'Don\'t have an account',
                        ),
                    //  defultTextButton(
                    // //   function: ()
                    // //  {
                    // //     navigateTo(
                    // //       context,
                    // //       registerScreen(),
                    // //     );
                    // //  },
                    //   text:'Register now'
                    //   ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                    Text(
                    'Sign in to Heart Rate App',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                  height: 80,
                  thickness: 1.5,
                ),
                  SizedBox(
                    height: 15,
                  ),
         defultFormFiled(
            controller: emailController,
            label: 'Email Address',
            prefix: Icons.email,
            type: TextInputType.emailAddress,
            validate: (value)
            {
              if(value.isEmpty)
              {
                return 'email must not be empty';
              }
              return null;
            },
         ),
                    SizedBox(
                    height: 15,
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Scan to login',
                        ),
                        TextButton(onPressed: (){
                        final route = MaterialPageRoute(builder: (context)=>forgotPassword());
                       Navigator.push(context, route);
                        },
                        child: Text(
                          'Forgot password?'
                        ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
             
             Container(
                  width: double.infinity,
                  color: Colors.blue,
               child: MaterialButton(
                
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){  
                    final route = MaterialPageRoute(builder: (context)=>HomeLayout(widget.isDark));
                       Navigator.push(context, route);
                }
                ),
             ),
              
                    ],
                  
                  ),
                  
                  ),
                  
            ),
          ],
        ),
      ]),
    );
  }
}