import 'package:developer/CategoriesScreen.dart';
import 'package:developer/Home_Page.dart';
import 'package:flutter/material.dart';


class TabsNavigation extends StatelessWidget{

  Widget build(BuildContext context){

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(26, 29, 57, 5),
          title: Row(
            children: [
              Icon(Icons.developer_mode_outlined , size: 35, color: Colors.green,),
              Text("Application Developer" , style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled),),
                Tab(icon: Icon(Icons.category),)
              ]
          ),
        ),
        body: TabBarView(
            children: [
              HomePage(),
              CategoriesScreen()
            ]
        ),
      ),
    );
  }
}