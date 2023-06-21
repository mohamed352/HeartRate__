import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_finsh/components/screen/home.dart';
import 'package:flutter_application_finsh/components/screen/login_screen.dart';
import 'package:flutter_application_finsh/components/screen/register.dart';
import 'package:flutter_application_finsh/models/heart_reate.dart';
import 'package:flutter_application_finsh/layout/home_layout.dart';
import 'package:flutter_application_finsh/models/face_detection.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

 bool islogin=false ;

void main() async {
    
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final bool isDark;

  const MyApp({Key? key, this.isDark=false}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  

  
  final lightTheme = ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
         // backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ),
        
          backgroundColor: Colors.black,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 20.0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          backgroundColor:Colors.white,
          
        ),
              textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        )
      ),
    );

  final darkTheme = ThemeData(
          scaffoldBackgroundColor:HexColor('333739'), 
        appBarTheme: AppBarTheme(
        //  backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor:HexColor('333739'),
            statusBarIconBrightness: Brightness.light,
          ),
        
          backgroundColor: HexColor('333739'),
          elevation: 0.0,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          elevation: 20.0,
          backgroundColor: HexColor('333739'),
          
        ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        )
      ),
     );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
       ChangeNotifierProvider<LearningFaceDetectionState>(create: (_) =>
       LearningFaceDetectionState())],

      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
       
        theme:widget.isDark?darkTheme:lightTheme, 
         
         home:const HomePage(), 
         // islogin  == false ? Home() : HomeLayout(widget.isDark),
        routes : {
          Home.id : (context) => Home (),
          HomeLayout.id : (context) => HomeLayout(widget.isDark),
          LoginScreen.id : (context) => LoginScreen(),
           registerScreen.id : (context) => registerScreen(),
        }
        
      
      
      ),
    );
  }
}

