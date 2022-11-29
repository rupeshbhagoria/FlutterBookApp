// import 'package:flutter/cupertino.dart';
import 'package:design/model/book.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    // final top = MediaQuery.of(context).padding.top;
    // final appBar = AppBar();
    // final actualHeight = height - appBar.preferredSize.height - top ;
    // final actualHeight = height - 50 - top ;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
              double.infinity,
              50
          ),
          child: AppBar(
            // backgroundColor: Colors.black.withOpacity(0.7),
            backgroundColor: Colors.white,
            // backgroundColor: Color(0xFFF2F5F9),
            // backgroundColor: Color.fromRGBO(2, 90, 50, 0.5),
            // leading: Icon(Icons.book),
            // centerTitle: true,
            elevation: 0,
            //  backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Hi John, ', style: TextStyle(color: Colors.black),),
            ),
            actions: [
              //   Icon(CupertinoIcons.book),
              Icon(Icons.search, color: Colors.black, size: 30,),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notification_important_outlined, color: Colors.black, size: 30,),
              ),
            ],
          ),
        ),
        body:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [

                  Container(

                    height: 200,
                    width: double.infinity,
                    child: Image.network('https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60', fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index){
                          final book =books[index];
                          return Container(
                            height: 100,
                            width: 370,
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(book.imageUrl)),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(book.title,
                                        style: TextStyle(color: Colors.blue),),
                                      SizedBox(height: 10,),
                                      Text(book.overview,
                                          maxLines: 10,
                                          style: TextStyle(color: Colors.blue), overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify),
                                      SizedBox(height: 10,),
                                      Text(book.star),
                                      SizedBox(height: 10,),
                                      Text(book.genre)

                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    ),




                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('You may also Like',)),
                  ),


                  SafeArea(
                    child: Container(
                      height: 260,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: books.length,
                          itemBuilder: (context, index){
                            final book =books[index];
                            return Container(
                              // height: 100,
                              width: 150,
                              child: Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(book.imageUrl)),
                                  SizedBox(width: 10,),
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(book.title,
                                        style: TextStyle(color: Colors.blue,),),

                                      // SizedBox(height: 10,),
                                      Text(book.genre)

                                    ],
                                  )
                                ],
                              ),
                            );
                          }
                      ),




                    ),
                  ),



                ],
              ),
            )
        )
    );
  }
}