import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingdesign/AppScreens/Shoes.dart';
import 'package:simple_animations/simple_animations.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes" , style: TextStyle(color: Colors.black, fontSize: 25),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none , color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart , color: Colors.black,))

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "All", style: TextStyle(fontSize: 18),),
                          ),
                        ),
                      ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "Sneakers", style: TextStyle(),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "Football", style: TextStyle(),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "Soccer", style: TextStyle(),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "Sneakers", style: TextStyle(),),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "Fashions", style: TextStyle(),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              makeItem(image: 'assets/images/four.jpg' , tag: 'lemon', context:context),
              makeItem(image: 'assets/images/one.jpg' , tag: 'red',context:context),
              makeItem(image: 'assets/images/five.jpg' , tag: 'blue',context:context),
              makeItem(image: 'assets/images/two.jpg' , tag: 'hblue',context:context),
              makeItem(image: 'assets/images/four.jpg' , tag: 'lemon', context:context),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeItem({image,tag , context}){
   return Hero(
     tag:tag,
     child: GestureDetector(
       onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoes(image:image,)));
       },
       child: Container(
         height: 250,
         width: double.infinity,
         padding: EdgeInsets.all(20),
         margin: EdgeInsets.only(bottom: 20),
         decoration: BoxDecoration(

           borderRadius: BorderRadius.circular(20),
           image: DecorationImage(
             image: AssetImage(image),
             fit: BoxFit.cover),
           boxShadow:[
             BoxShadow(
               color: Colors.grey,
               blurRadius: 10,
               offset: Offset(0, 10),
             ),
           ]
           ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:<Widget> [
                 Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Text("Sports" , style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                       SizedBox(height: 10,),
                       Text("Nike" , style: TextStyle(color: Colors.white, fontSize: 20),),
                     ],
                 ),)
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
             ),
             Text(
               '100\$' ,style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.bold ),
             ),
           ],
         ),
         ),
       ),
   );
  }
}
