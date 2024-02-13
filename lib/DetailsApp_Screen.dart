import 'package:developer/models/Category_Data.dart';
import 'package:developer/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Data/category_data.dart';
import 'models/Apps.dart';


class DetailsScreen extends StatefulWidget{
  static const screenR = 'DetailsScreen';

  final List<Apps> details;

  DetailsScreen({required this.details});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  late String appTitle , appId;
  List<Apps> displayDetails = [];

  @override
  void didChangeDependencies() {
     final routeArgument = ModalRoute.of(context)!.settings.arguments as Map<String , dynamic>;
      appTitle = routeArgument["title"]!;
      appId = routeArgument['id'];
    displayDetails = widget.details.where((app) {
      return app.category.contains(appId);
    }).toList();
    super.didChangeDependencies();
  }

  Widget build(BuildContext context){
    final selectedApp = appsList.firstWhere((app) => app.id == appId);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(26, 29, 57, 5),
        title: Row(
            children: [
          Text(appTitle , style: TextStyle(
              fontSize: 30,
              color: Colors.green
          ),),

              Spacer(),

              CircleAvatar(
                backgroundImage: Image.asset(selectedApp.image).image,
              )
        ]),
      ),

      body: ListView(
          children: [
            ListViewImage(imageList: selectedApp.imageApp),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 150,left: 10),
                child: Text("Pay" ,textAlign: TextAlign.center ,style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyanAccent
                ),),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextButton(
                child: Row(
                  children: [
                    Text("About this app" , style: TextStyle(
                          fontSize: 25,
                          color: Colors.red[900],
                          fontWeight: FontWeight.bold
                        ),),
                    Spacer(),
                    Icon(CupertinoIcons.arrow_right , color: Colors.red[900],)
                  ],
                ),
                onPressed: (){},
              )
            ),
            SizedBox(height: 10,),

            Container(
              margin: EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                /*boxShadow: [
                  BoxShadow(color: Colors.black38 , offset: Offset(5,15) , blurRadius: 25)
                ]*/
              ),
              child: ListView.builder(
                  itemCount: selectedApp.discreption.length,
                  itemBuilder: (context , index)=>
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text('  ${selectedApp.discreption[index]}',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15
                      ),),
                    ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextButton(
                    child: Row(
                      children: [
                        Text('Related Apps' , style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.red[900]
                        ),),
                        Spacer(),
                        Icon(CupertinoIcons.arrow_right , color: Colors.red[900],)
                      ],
                    ),
                    onPressed: (){},
                  ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              color: Colors.transparent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: appsList.length,
                  itemBuilder: (context , index)=>
                      AppsContainer(
                          product: appsList[index],
                          itemIndex: index,
                          id: appsList[index].id,
                          title: appsList[index].title,
                      )
            )
            )
          ],
      )
    );
  }
}