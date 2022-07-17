import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(
                "images/twitter.png",
                width: 40,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            "images/twitter.png",
            width: 45,
          ),
          centerTitle: true,
          actions: [],
        ),
        body: ListView(
          children: [
            //container is our tweet
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          child: Image.asset(
                            'images/twitter.png',
                            width: 45,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'USER ACCOUNT',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[700]),
                          ),
                          Text(
                            '@username',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('30m ago',
                          style: TextStyle(color: Colors.grey[700])),
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                    ],
                  ),
                  Text('data'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.comment)),
                          Text(
                            '26',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                          Text(
                            '188',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          Text(
                            '188',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            )
          ],
        ));
  }
}
