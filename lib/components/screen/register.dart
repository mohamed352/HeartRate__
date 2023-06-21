import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/components.dart';
import 'package:flutter_application_finsh/components/screen/home.dart';
import 'package:flutter_application_finsh/components/screen/login_screen.dart';

class registerScreen extends StatefulWidget {
  static const String id = "registerScreen";

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {

  var nameController = TextEditingController();
  var lastNameController = TextEditingController();

  var emailController = TextEditingController();

  var PasswordController = TextEditingController();
  var ConformPasswordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Heart Rate',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
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
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: lastNameController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
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
                  suffix:
                      isPasswordShow ? Icons.visibility : Icons.visibility_off,
                  isPassword: isPasswordShow,
                  suffixPressed: () {
                    setState(() {
                      isPasswordShow = !isPasswordShow;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (value) {
                    if (value.isEmpty) {
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
                  suffix:
                      isPasswordShow ? Icons.visibility : Icons.visibility_off,
                  isPassword: isPasswordShow,
                  suffixPressed: () {
                    setState(() {
                      isPasswordShow = !isPasswordShow;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (value) {
                    if (value.isEmpty) {
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
                    onPressed: ()  {
  
                    },
                    child: MaterialButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => LoginScreen());
                        Navigator.push(context, route);
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        ' Register Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
