// import 'package:flutter/material.dart';
// import 'package:flutter_application_finsh/layout/cubit/AppStates.dart';
// import 'package:flutter_application_finsh/pages/information.dart';
// import 'package:flutter_application_finsh/pages/setting.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AppCubit extends Cubit <AppStates>{
//   AppCubit(): super (AppInitialState());

// static AppCubit get(context)=> BlocProvider.of(context);

// int currentIndex=0;
//   List<Widget> screens = 
//   [
//     newInformation(),
//     newSetting(),
//   ];

//     List<String> title = 
//   [
//     'Setting',
//     'Home',
//   ];

//   void changeIndex(int index){

//    currentIndex =index;

//   }
//  bool isDark = false;


// void changeAppMode(){
//   isDark =!isDark;
//   emit(AppChangeModeState());
// }


// }