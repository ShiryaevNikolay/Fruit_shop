import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/icons/custom_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MaterialButton(
            shape: CircleBorder(),
            child: Column(
              children: [
                Icon(
                  CustomIcons.vector,
                  size: 24,
                  color: Color(int.parse("0xFFFFA541")),
                ), 
                Text(
                  "My basket",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            padding: EdgeInsets.all(5),
            onPressed: () {}
          )
        ],
      )
    );
  }
}
