import 'package:developer/Apps_Screen.dart';
import 'package:developer/DetailsApp_Screen.dart';
import 'package:developer/models/Apps.dart';
import 'package:flutter/material.dart';


class IdContainer extends StatelessWidget{

  final image , name , phone , text1 , text2 , text3 ;

  IdContainer({
    this.image , this.name , this.text1,this.text2 ,this.text3 , this.phone
});


  Widget build(BuildContext context){

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(2.5),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              color:Color.fromRGBO(26, 29, 57, 5),
              boxShadow: [
                BoxShadow(color: Colors.black26 , offset: Offset(0, 15) , blurRadius: 25)
              ],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60) , topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40))
          ),
        ),
        Positioned(
          //left: 30,
            child: CircleAvatar(
              radius: 60,
              backgroundImage:Image.asset(image).image,
            )
        ),

        Positioned(
            top: 40,
            right: 70,
            child: Text("Name : $name \n Tel : $phone" , style: TextStyle(
                fontSize: 17 ,
                fontWeight: FontWeight.bold,color:
            Colors.white),)
        ),

        Positioned(
            left: 70,
            bottom: 20,
            child: Text('$text1\n'
                '$text2\n $text3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white
              ),
            )
        ),
      ],
    );
  }
}


class AdsContainer extends StatelessWidget{


  final image;
  final background;
  final color;

  AdsContainer({this.image , this.color,this.background});
  
  Widget build(BuildContext context){
    
    return Stack(
      
      children: [
        Container(
          margin: EdgeInsets.all(2.5),
          width: 355,
          height: 200,
          decoration: BoxDecoration(
            color:color,
            image:DecorationImage(
              image: Image.asset(background,height: 200,width: 355,).image
            ),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
        ),
      ],
    );
  }
}


class AppsContainer extends StatelessWidget{

  final Apps product;
  final itemIndex;
  final id , title;

  AppsContainer({
    required this.product,
    this.itemIndex,
    this.id,
    this.title,
});

  Widget build(BuildContext context){

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.screenR , arguments: {
          'id':id,
          'title' :title,
        });
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 210,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[900]
              ),
            ),
          ),

          Positioned(
            left: 50,
              child: CircleAvatar(
                radius: 50,
                  backgroundImage: Image.asset(product.image).image
              )
          ),

          Positioned(
             left: 20,
              bottom: 80,
              child: Text(product.title , style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),)
          ),


          Positioned(
            height: 40,
              width: 150,
              bottom: 35,
              right: 20,
              child: Material(
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(40) , borderSide: BorderSide.none,),
                color: Colors.red[900],
                elevation: 5,
                child: MaterialButton(
                    onPressed: (){},
                  child: Text('Price: ${product.price}\$' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                  ),),
                ),
              )
          ),

          Positioned(
              bottom: 15,
              right: 20,
              child: Text('More Details >' , style: TextStyle(
                  fontSize: 12,
                  color: Colors.greenAccent,
                  fontStyle: FontStyle.italic
                ),)
          )
        ],
      ),
    );
  }
}


class CategoryItem extends StatelessWidget{

  final String image , title, id;

  CategoryItem({required this.id , required this.title , required this.image});

  Widget build(BuildContext context){

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AppsScreen.screenR,  arguments: {
          'id' :id,
          'title' : title
        });
      },
      child: Stack(
          children: [
            ClipRRect(
              child: Image.network(image ,height: 250,fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(20),
            ),

            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black87.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(title , style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
            )
          ],
        ),
    );
  }
}


class CardApp extends StatelessWidget{

  final image;
  final title;
  final price;
  final developerBy;
  final id;

  CardApp({this.price , this.image , this.title , this.developerBy , this.id});

  Widget build (BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, DetailsScreen.screenR , arguments: {
          "id" : id,
          'title' :title,
        });
      },
      child: Card(
        color: Colors.white,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20) , borderSide: BorderSide.none),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              height: 100,
            ),

            Positioned(
              top: 10,
              left: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(image).image,
                )
            ),

            Positioned(
              top: 20,
              left: 80,
                child: Text(title , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black87
                ),)
            ),

            Positioned(
                left: 80,
                top: 50,
                child: Text(developerBy , style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontStyle: FontStyle.italic
                ),)
            ),

            Positioned(
              bottom: 35,
              right: 10,
                child: Material(
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                  color: Colors.red[900],
                  child: MaterialButton(
                      onPressed: (){},
                      child: Text('Price : $price' , style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                  ),
                )
            ),

            Positioned(
              bottom: 5,
                right: 10,
                child: Text("See More>>" , style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue[900],
                  fontStyle: FontStyle.italic
                ),)
            )
          ],
        ),
      ),
    );
  }
}


class ListViewImage extends StatelessWidget{
  List<String> imageList;

  ListViewImage({required this.imageList});
  Widget build(BuildContext context){
    return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Color.fromRGBO(26, 29, 57, 5),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            itemBuilder: (context , index)=>
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(imageList[index] , height: 100,width: 100),
                ),
          ),
        );
  }
}
