import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const url =
    "https://images.unsplash.com/photo-1503541832352-a06970961496?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";

class _HomePageState extends State<HomePage> {
  final scfKey = GlobalKey<ScaffoldState>();
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      child: Scaffold(
        key: scfKey,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.yellow,
              ),

              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(CupertinoIcons.home, color: Colors.white),
                      onPressed: () {
                        scfKey.currentState
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text("Woww")));
                      }),
                  IconButton(
                      icon: Icon(CupertinoIcons.person_alt, color: Colors.white),
                      onPressed: () {
                        scfKey.currentState
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text("Woww")));
                      }),
                  IconButton(
                      icon: Icon(CupertinoIcons.cloud_moon_rain, color: Colors.white,),
                      onPressed: () {
                        scfKey.currentState
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text("Woww")));
                      }),

                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10250,
                  itemBuilder: (context, i){
                    if(i % 7 == 0 ){
                      return Container(
                        width: double.infinity,
                        height: 400,
                        child: Image.network("https://images.unsplash.com/photo-1486649567693-aaa9b2e59385?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                      );
                    }
                    if(i % 11 == 0){
                      return Container(
                        width: double.infinity,
                        height: 400,
                        child: Image.network("https://images.unsplash.com/photo-1527189919029-aeb3d997547d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80"),
                      );
                    }
                return Card(
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("$i", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
