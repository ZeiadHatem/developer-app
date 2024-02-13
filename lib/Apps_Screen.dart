import 'package:developer/models/Apps.dart';
import 'package:developer/widgets/widget.dart';
import 'package:flutter/material.dart';


class AppsScreen extends StatefulWidget{
  static const screenR = 'AppsScreen';

  final List<Apps> avilableApps;

  AppsScreen({required this.avilableApps});

  @override
  State<AppsScreen> createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {

  late String categoryTitle;
  List<Apps> displayApps =[];

  @override
  void didChangeDependencies() {
    final routeArgument = ModalRoute.of(context)?.settings.arguments as Map<String , String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title']!;
    displayApps = widget.avilableApps.where((app) {
      return app.category.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 29, 57, 5),
        title: Text("$categoryTitle" , textAlign: TextAlign.center,style: TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w300
        ),),
      ),

      body: ListView.builder(
         itemCount: displayApps.length,
          itemBuilder: (context , index){
            return CardApp(
              image: displayApps[index].image,
              price: displayApps[index].price,
              title: displayApps[index].title,
              developerBy: displayApps[index].developerBy,
              id: displayApps[index].id,
            );
          }

      ),
    );
  }
}