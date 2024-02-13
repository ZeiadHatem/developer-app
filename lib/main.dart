import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:developer/Apps_Screen.dart';
import 'package:developer/Data/category_data.dart';
import 'package:developer/DetailsApp_Screen.dart';
import 'package:developer/Home_Page.dart';
import 'package:developer/TabsNavigation.dart';
import 'package:developer/models/Apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){

  runApp(Developer());
}

class Developer extends StatelessWidget{

  final List<Apps> avilableApps = appsList;
  final List<Apps> detailsApp = appsList;

  Widget build(BuildContext context){

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          AppsScreen.screenR:(context)=>AppsScreen(avilableApps: avilableApps),
          DetailsScreen.screenR:(context)=>DetailsScreen(details: detailsApp,)
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget{


  Widget build(BuildContext context){

    return AnimatedSplashScreen(
        splash: Center(
          child: Center(
            child: Image(image: AssetImage('tools/images/splashScreen.png'))
          ),
        ),
        nextScreen: TabsNavigation(),
        splashIconSize: 500,
        backgroundColor: Color.fromRGBO(29, 26, 57, 5),
        duration: 1000,
    );
  }
}