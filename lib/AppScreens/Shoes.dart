import 'package:flutter/material.dart';

import 'Done.dart';

class Shoes extends StatefulWidget {
   final String image;

  const Shoes({Key? key, required this.image}) : super(key: key);
  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ]
            ),
            child: Stack(

              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios, color: Colors.white,
                      ),
                    ),
                  )
                    ,
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border , size: 20,
                        ),
                      ),
                    ),
                  ],
                ),),
                Positioned(
                  bottom: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.0),
                      ]
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sports" , style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold , ),),
                      SizedBox(height: 25,),
                      Text("Size" , style: TextStyle(color: Colors.white, fontSize: 20),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Text(
                                "36" , style: TextStyle(
                                color: Colors.white ,fontWeight: FontWeight.bold ,
                              ),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "38" , style: TextStyle(
                                color: Colors.black ,fontWeight: FontWeight.bold ,

                              ),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Text(
                                "40" , style: TextStyle(
                                color: Colors.white ,fontWeight: FontWeight.bold ,
                              ),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Text(
                                "44" , style: TextStyle(
                                color: Colors.white ,fontWeight: FontWeight.bold ,
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 60,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Done()));
                            },
                              child: Text(
                            "Buy Now" , style: TextStyle(fontWeight: FontWeight.bold),
                          ),),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),),
              ],
            ),
          ),
        )
          ,
        ),
      );

  }
}


