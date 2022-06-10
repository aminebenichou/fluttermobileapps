import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/feed.dart';

void main() {
  runApp(const MyApp());
}

var _iconColor = Colors.black;
var _iconColorcmnt = Colors.black;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Builder(builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(60)),
                child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/dokkit.png'),
                      backgroundColor: Colors.white,
                    )),
              ),
            );
          }),
          title: Image.asset(
            'assets/twitter.png',
            scale: 10,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star_border,
                  color: Colors.blue,
                ))
          ],
        ),
        backgroundColor: Colors.grey[100],
        body: Feed(),
        // TODO: Make the Bottom navigation bar
      ),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image(
                          image: AssetImage(tweets[index].profilepic),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        tweets[index].username,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        tweets[index].handler,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        tweets[index].postingtime,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                tweets[index].content,
                                style: TextStyle(),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mode_comment_outlined,
                                      size: 20,
                                    )),
                                Text(tweets[index].comments)
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    color: tweets[index].retweet
                                        ? _iconColorcmnt = Colors.green
                                        : _iconColorcmnt = Colors.black,
                                    onPressed: () {
                                      setState(() {
                                        tweets[index].retweet =
                                            !tweets[index].retweet;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.refresh_outlined,
                                      size: 20,
                                    )),
                                Text(
                                  tweets[index].retweets,
                                  style: TextStyle(color: _iconColorcmnt),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  color: tweets[index].liked
                                      ? _iconColor = Colors.red
                                      : _iconColor = Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      tweets[index].liked =
                                          !tweets[index].liked;
                                    });
                                  },
                                  icon: tweets[index].liked
                                      ? Icon(
                                          Icons.favorite,
                                          size: 20,
                                        )
                                      : Icon(
                                          Icons.favorite_border_outlined,
                                          size: 20,
                                        ),
                                ),
                                Text(
                                  tweets[index].likes,
                                  style: TextStyle(color: _iconColor),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
