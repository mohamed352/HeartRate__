import 'package:flutter/material.dart';
import 'package:flutter_application_finsh/layout/cubit/states.dart';
import 'package:flutter_application_finsh/pages/information.dart';
import 'package:flutter_application_finsh/pages/setting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit():super (NewsInitialState());

  static NewsCubit get(context)=> BlocProvider.of(context);

  int currentIndex=0;

  List<BottomNavigationBarItem> bottomItems =
  [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.density_small_outlined,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(
      Icons.settings,
    ),
      label: 'setting',
    ),

 ];


  List<Widget> screens = 
  [
    newInformation(),
    newSetting(),
  ];
 
  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

}

