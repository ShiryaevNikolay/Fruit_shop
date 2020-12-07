import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabButton extends StatefulWidget {
  final String textTab;
  final Function() onPressed;
  String selectedTab;

  TabButton(this.textTab, {this.selectedTab, @required this.onPressed});

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          child: Text(
            widget.textTab,
            style: TextStyle(
                color: widget.selectedTab == widget.textTab
                    ? Color(int.parse("0xFF27214D"))
                    : Color(int.parse("0xFF938DB5")),
                fontSize: widget.selectedTab == widget.textTab ? 24 : 16,
                fontWeight: FontWeight.w500),
          ),
          onTap: widget.onPressed,
        ),
        Container(
          width: widget.selectedTab == widget.textTab ? 22 : 0,
          height: widget.selectedTab == widget.textTab ? 2 : 0,
          decoration: BoxDecoration(
              color: widget.selectedTab == widget.textTab
                  ? Color(int.parse("0xFFFFA451"))
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(2)),
        ),
      ],
    );
  }
}
