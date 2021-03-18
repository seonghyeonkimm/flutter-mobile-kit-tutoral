import 'package:flutter/material.dart';
import 'package:mobile_kit/widgets/GlobalAppBar.dart';

class ContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBar(
          title: 'Contents',
          actionText: "Filter",
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 32.0),
                child: Container(
                  child: TextField(
                    style: TextStyle(fontSize: 18.0),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular((32.0))),
                ),
              ),
              ContentItem(),
              ContentItem(),
              ContentItem(),
            ],
          )),
        ));
  }
}

class ContentItem extends StatelessWidget {
  const ContentItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.black12),
            height: 300.0,
          ),
          SizedBox(height: 12.0),
          Text('Header',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          SizedBox(height: 8.0),
          Text('Description comes here',
              style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 6.0),
          Text('8m ago', style: Theme.of(context).textTheme.caption),
        ]),
      ),
    );
  }
}
