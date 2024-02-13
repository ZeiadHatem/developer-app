import 'dart:io';

import 'package:developer/Data/category_data.dart';
import 'package:developer/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/Apps.dart';


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              IdContainer(
                image: 'tools/images/me.jpg',
                name: 'Zeiad Hatem' ,
                phone: "01028236589",
                text1: 'I’m an Android Application Programmer,',
                text2: 'You can Check out my Work Here,',
                text3: 'and If you Like it, Contact me',
              ),

              SizedBox(height: 20,),

              Container(
                //margin: EdgeInsets.all(2.5),
                height: 200,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: [
                      AdsContainer(background: 'tools/images/sale.png', color: Colors.blue[900],),
                      SizedBox(width: 10,),
                      AdsContainer(background: 'tools/images/sale2.png', color: Colors.red[900],),
                      SizedBox(width: 10,),
                      AdsContainer(background: 'tools/images/sale background.jpg',)
                    ],
                ),
              ),

              SizedBox(height: 20,),

              Text("Some Apps" ,style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(26, 29, 57, 5),
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 10,),

              Container(
                height: 210,
                width: 400,
                child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: appsList.length-3,
                    itemBuilder: (context , index)=>AppsContainer(
                      product: appsList[index],
                      itemIndex: index,
                      id: appsList[index].id,
                      title: appsList[index].title,
                    )
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed:() async{
          var whatsAppNum = '+01099304011';
          var whatsAppUrlIos = 'https://wa.me/$whatsAppNum?text=${Uri.parse('hello')}';
          if(Platform.isAndroid){
            if(await launch('https://wa.me/+201099304011')){
              await launch('https://wa.me/+201099304011');
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You Have Something Wrong")));
            }
          }
          else{
            if(await launch(whatsAppUrlIos)){
              await launch(whatsAppUrlIos);
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You Have Something Wrong")));
            }
          }
        },
        child: Image.asset('tools/images/whatsappicon.png'),
      ),

    );
  }
}