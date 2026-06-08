import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final data;
   const DetailsScreen({super.key, required  this.data});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "*",
          ),
        ],
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Icon(Icons.shopping_cart, color: Colors.black),
            Text(" Details ", style: TextStyle(color: Colors.black)),
            Text("prodect ", style: TextStyle(color: Colors.amber)),
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["image"], height: 300, width: 300),
          SizedBox(height: 20),
          Center(child: Text(widget.data["title"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          SizedBox(height: 10),
          Center(child: Text(widget.data["price"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown))),
          SizedBox(height: 30,),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('color:   ',style: TextStyle(fontSize: 25),),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle,
              ),
            ),
            Text('  black  | '),
             Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.amber, width: 2),
                shape: BoxShape.circle,
              ),
            ),
            Text('  grey   '),
            
          ],),
          SizedBox(height: 20,),


         Container(
          margin: EdgeInsets.symmetric(horizontal: 60),
          child: MaterialButton(
            color: Colors.black,
            onPressed: (){},child:Text("Add To Cart",style: TextStyle(color: Colors.white),) ,))
        ],
      ),
    );
  }
}
