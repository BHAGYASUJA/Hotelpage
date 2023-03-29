import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/ContactBook.dart';
import 'package:sample/LoginPage.dart';
import 'package:sample/home.dart';
import 'package:sample/login%20with%20validation.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      home:Splashh(),
      debugShowCheckedModeBanner: false,
     ),
  ));
}

class Splashh extends StatefulWidget {


  @override
  State<Splashh> createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  @override
  void initState() { //3 min to next Page type init
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>contactbook()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.purple,
            Colors.lightBlue,
            Colors.blueGrey],
            stops: [
              0.0,
              0.2,
              0.8,
              1
            ],
          )),
            //begin: Alignment.bottomLeft,
            //end: Alignment.topRight)),
          //color: Colors.black,  ///Single Color for Whole Body
         // ///network or asset image for whole body
        //decoration: const BoxDecoration(
       // image:DecorationImage(
       // fit: BoxFit.fill,
          //
         // Image:AssetImage("assets/images/istockphoto-1347494018-1024x1024.jpg"))),
    // NetworkImage(
    //"https://www.istockphoto.com/photo/funny-friends-cute-cat-and-corgi-dog-are-lying-on-a-white-bed-together-gm1347494018-424975527?utm_source=unsplash&utm_medium=affiliate&utm_campaign=category_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fimages%2Ffeelings%2Flove&utm_term=love%3A%3A%3A"
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center ,
    children:[
      Image.asset("assets/Stickers/eli.jpg",fit: BoxFit.cover,
      ),
    // Icon(Icons.scatter_plot,
    //   size: 130,
    //   color:Colors.purple,),
   // Image.network("https://unsplash.com/photos/W67WpQzMzd0",height:490,width:400),
     Text(
       "Welcome To Application ....!",
       style: GoogleFonts.vampiroOne(
         fontSize :40,
         color:Colors.yellowAccent,
         fontWeight:FontWeight.bold,
         textStyle:Theme.of(context).textTheme.labelMedium
       )
    //style:
    //TextStyle(
    //fontSize: 30,
    //color: Colors.purple,
   // fontWeight: FontWeight.bold),

    )
    ],
    ),
    ),
    )
    );
  }
}



