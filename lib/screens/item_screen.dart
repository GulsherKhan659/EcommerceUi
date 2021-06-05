import 'package:flutter/material.dart';
import 'package:jawan_pakistan_assignment3/data_source.dart';
class ItemScreen extends StatelessWidget {
  //const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title:const Text("E-commerce App Ui",style: TextStyle(
                color: Colors.black
            ),),
            actions: [
              const  Icon(Icons.notifications,color: Colors.black,),
            ],
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
                itemCount: listOfItems.length,
                itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(10),
                  child: Card(
                      child: Row(children: [
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                              image: AssetImage(listOfItems[index].itemImage),
                              fit:BoxFit.fill,

                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(listOfItems[index].itemName,style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),

                            Row(

                              children: [
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              SizedBox(width: 1,),
                              Text("5.0"),
                              SizedBox(width: 1,),
                              Text("(23 Reviews)"),
                            ],),
                            Row(children: [
                              Text("20 Pieces"),
                              SizedBox(width: 5,),
                              Text("\$90",style: TextStyle(
                                fontSize: 16,
                                color: Colors.purple
                              ),)
                            ],),
                          Text("Quantity : 1"),
                          ],
                        ),
                      ],),
                  ),
                  );
                }),
          ),
        ));
  }
}
