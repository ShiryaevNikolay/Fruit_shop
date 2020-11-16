import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/icons/custom_icons.dart';

class CustomIconSubtextButton extends StatelessWidget {
  final String subtext;

  CustomIconSubtextButton({this.subtext});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: Column(
        children: [
          Icon(
            CustomIcons.icBasket,
            size: 24,
            color: Color(int.parse("0xFFFFA541")),
          ),
          Text(
            subtext,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
      // customBorder: CircleBorder(),
      onTap: () {},
    );
  }
}
