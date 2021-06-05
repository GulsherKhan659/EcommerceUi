import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jawan_pakistan_assignment3/data_source.dart';
class HistoryScreen extends StatelessWidget {
  //const HistoryScreen({Key? key}) : super(key: key);

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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Username",style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 18
                    ),),
                    Icon(Icons.search,color: Colors.grey,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25,10,15,10),
                child: Text("History",style: TextStyle(
                  fontSize: 18
                ),),
              ),
              Expanded(child:ListView.builder(
                  itemCount: listOfItems.length,
                  itemBuilder:(context,index){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(listOfItems[index].itemImage),
                         // foregroundImage:AssetImage(listOfItems[index].itemImage) ,
                        ),
                        title: Text(listOfItems[index].itemName),
                        subtitle: Row(children: [
                          Icon(Icons.star,color: Colors.yellow,size: 20,),
                          SizedBox(width: 1,),
                          Text("5.0"),
                          SizedBox(width: 1,),
                          Text("(23 Reviews)"),
                        ],),
                        trailing: Text("\$10"),
                      ),
                    );
                  })),
            ],
          ),
        ));
  }
}
