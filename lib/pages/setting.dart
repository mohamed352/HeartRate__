import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/components/components.dart';
import 'package:flutter_application_finsh/components/screen/home.dart';
import 'package:flutter_application_finsh/components/screen/login_screen.dart';

class newSetting extends StatelessWidget {
    var emailController =TextEditingController();
  var PasswordController=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Navigate to the profile settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileSettingsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy'),
              onTap: () {
                // Navigate to the privacy settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacySettingsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                // Navigate to the notification settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationSettingsPage(),
                  ),
                );
              },
            ),
            ListTile(
                leading: Icon(Icons.calculate),
              title: Text('Calculate '),
              onTap: () {
                // Navigate to the notification settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => sum(),
                  ),
                );
              },
            ),
            SizedBox(
             height: 400,
            ),
            Container(
                   width: double.infinity,
                  color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (context) => Home());
                        Navigator.push(context, route);
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Log out',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
          ],
        
        ),
      ),
    );
  }
}

class ProfileSettingsPage extends StatelessWidget {
   var nameController = TextEditingController();
    var dataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage('assets/images/profile_image.jpg'),
              ),
             
      SizedBox(height: 25,),
              defultFormFiled(
                controller: nameController,
                label: "User name",
               prefix: Icons.person,
              type: TextInputType.name,
              validate: (value)
              {
                if(value.isEmpty)
                {
                  return 'name must not be empty';
                }
                return null;
              },
              ),
                  SizedBox(
                    height: 25,
                  ),
        
              defultFormFiled(
                controller:dataController ,
                label: "Date of Birth",
               prefix: Icons.dataset_sharp,
              type: TextInputType.datetime,
              validate: (value)
              {
                if(value.isEmpty)
                {
                  return 'Data or Birth must not be empty';
                }
                return null;
              },
              ),
              SizedBox(height: 25,),
              defultFormFiled(
                controller: emailController,
                label: "Email Address",
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
                height: 25,
              ),
              defultFormFiled(
                controller: PasswordController,
                label: "Password",
               prefix: Icons.remove_red_eye,
              type: TextInputType.visiblePassword,
              validate: (value)
              {
                if(value.isEmpty)
                {
                  return 'Password must not be empty';
                }
                return null;
              },
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: Center(
        child: Text('Privacy Settings Page'),
      ),
    );
  }
}

class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Center(
        child: Text('Notification Settings Page'),
      ),
    );
  }
}

class sum extends  StatefulWidget{

  @override
  State<sum> createState() => _sumState();
}

class _sumState extends State<sum> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  String sumResult = '';
    Future<void> calculateSum(String value1, String value2) async {
    String url = 'http://192.168.1.12/test/calculate.php';
    var response = await http
        .post(Uri.parse(url), body: {'value1': value1, 'value2': value2});
            if (response.statusCode == 200) {
      // Get the response body.
      var body = await response.body;

      // Decode the response body as JSON.
      var data = jsonDecode(body);
      print(data['result']);
      setState(() {
        sumResult = data['result'].toString();
      });
    } else {
      
      print('Error calling API: ${response.statusCode}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sum Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: value1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Value 1',
                ),
              ),
              TextField(
                controller: value2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Value 2',
                ),
              ),
              ElevatedButton(
                // onPressed: calculateSum,
                child: Text('Calculate Sum'),
                onPressed: () async {
                  await calculateSum(
                      value1Controller.text, value2Controller.text);
                  ;
                },
              ),
              SizedBox(height: 16),
              Text(
                'Sum Result: $sumResult',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

