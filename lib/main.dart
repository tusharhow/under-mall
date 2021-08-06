import 'package:flutter/material.dart';
import 'package:under_mall/constants.dart';

import 'components/categorie_items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: bgColor,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: bgColor,
            leading: Icon(Icons.menu,color: Colors.white,),
            actions: [
              Icon(Icons.hearing_rounded,color: Colors.white,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Icon(Icons.search,color: Colors.white,),
              ),
            ],
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: defaultPadding*1.5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 0.0)),
                fillColor: bgColor2,
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white54),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white54,
                ),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
              SizedBox(height: defaultPadding*1.5,),
              Container(
                height: 150,
                width: 370,
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    children: [
                      Image(image: AssetImage('images/bra2.png'),height: 120,),
                      SizedBox(width: defaultPadding,),
                      Column(

                        children: [ SizedBox(height: defaultPadding,),
                          Text('Your Desired',style: TextStyle(color: Colors.white,fontSize: 22),),
                          Text('Under Garments',style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){}, child: Text('Buy Now',style: TextStyle(color: Colors.white70),),style: ElevatedButton.styleFrom(
                            primary: Colors.white24,
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: defaultPadding*1.5,),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
               CategorieItems(imgSrc: 'images/menu.png',label: 'All',),
               CategorieItems(imgSrc: 'images/bra1.png',label: 'Bra',),
               CategorieItems(imgSrc: 'images/bra2.png',label: 'Panties',),
                 CategorieItems(imgSrc: 'images/bra1.png',label: 'Kids',),

             ],),
              SizedBox(height: defaultPadding*1.5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardItems(imgSrc: 'images/bra1.png',name: 'Comfort',label: '5 Colours',),
                  CardItems(imgSrc: 'images/pantie2.png',name: 'Large',label: '3 Colours',),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItems extends StatelessWidget {
  const CardItems({
    Key? key,@required this.imgSrc,@required this.name, @required this.label,
  }) : super(key: key);
  final imgSrc;
  final name;
  final label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 160,
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(imgSrc),height: 60,),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 18),),
          Text(label,style: TextStyle(color: Colors.white,fontSize: 15),),
          ElevatedButton(onPressed: (){}, child: Text('Buy',style: TextStyle(color: Colors.white70),),style: ElevatedButton.styleFrom(
            primary: Colors.white24,
          ),),
        ],
      ),
    );
  }
}
