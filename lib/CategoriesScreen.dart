import 'package:developer/Data/category_data.dart';
import 'package:developer/widgets/widget.dart';
import 'package:flutter/material.dart';


class CategoriesScreen extends StatelessWidget{


  Widget build(BuildContext context){
    return  Scaffold(

      body: GridView(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:200,
            childAspectRatio: 7/8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ),
        children: categories.map((categories) => CategoryItem(
          id: categories.id,image: categories.imageUrl,title: categories.categoryName,
        )
        ).toList(),
      ),

    );
  }
}