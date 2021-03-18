import 'package:flutter/material.dart';
import 'package:mobile_kit/screens/SignUpScreen.dart';
import 'package:mobile_kit/screens/content_screen.dart';
import 'package:mobile_kit/widgets/GlobalAppBar.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  int selectedIndex = 0;
  var _pages = [
    FeedScreen(),
    SignUpSreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        title: 'Feed',
        actionText: 'Filter',
        onPressed: () {},
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              Search(),
              SizedBox(height: 16.0),
              Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: Column(
                  children: [FeedItem(), FeedItem(), FeedItem(), FeedItem()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                    height: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8.0)),
                    )),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if (value == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContentScreen()));
          }
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_copy), label: 'Content'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Market'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
      ),
    );
  }
}

class FeedItem extends StatelessWidget {
  const FeedItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 98,
            padding: EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.blueGrey)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Header',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                      Text('8m ago', style: TextStyle(color: Colors.blueGrey))
                    ],
                  ),
                ),
                Container(
                  child: Text(
                      "He'll want to use your yacht, and I don't want this thing smelling like fish."),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(32.0)),
        child: TextField(
          style: TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
              hintText: 'Search',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              border: InputBorder.none),
        ));
  }
}
