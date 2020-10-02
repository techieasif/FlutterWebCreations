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
        body: Stack(
          children: [
            Positioned(
                top: 0.0,
                right: 0.0,
                left: 0.0,
                child: Container(
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
                ))
          ],
        ),
      ),
    );
  }
}
