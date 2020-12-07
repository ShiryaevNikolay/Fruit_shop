import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hottest", "Popular", "New combo", "Top"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index)
      ),
    );
  }

  Widget buildCategory(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: selectedIndex == index ? 24 : 16,
            color: selectedIndex == index ? Color(int.parse("0xFF27214D")) : Color(int.parse("0xFF938DB5"))
          ),
        ),
        Container(
          height: 2,
          width: 22,
          color: selectedIndex == index ? Color(int.parse("0XFFFFA451")) : Colors.transparent,
        )
      ],
    );
  }
}
