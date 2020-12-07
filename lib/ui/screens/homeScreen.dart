import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter_app/ui/components/cardProduct.dart';
import 'package:new_flutter_app/ui/views/customIconSubtextButton.dart';
import 'package:new_flutter_app/ui/views/customTextField.dart';
import 'package:new_flutter_app/ui/views/tabButton.dart';

class HomeScreen extends StatefulWidget {
  final String textName;

  HomeScreen(this.textName);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = ["Hottest", "Popular", "New combo", "Top"];
  String selectedTab = "Hottest";

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: statusBarHeight + 26,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 22,
                        height: 2.75,
                        decoration: BoxDecoration(
                            color: Color(int.parse("0xFF070648")),
                            borderRadius: BorderRadius.circular(2)),
                      ),
                      SizedBox(
                        height: 5.5,
                      ),
                      Container(
                        width: 13.75,
                        height: 2.75,
                        decoration: BoxDecoration(
                            color: Color(int.parse("0xFF070648")),
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    ],
                  ),
                  CustomIconSubtextButton(
                    subtext: "My basket",
                  )
                ],
              ),
            ),
            SizedBox(height: 11),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                  text: TextSpan(
                      text: "Hello ${widget.textName}, ",
                      style: TextStyle(
                          color: Color(int.parse("0xFF27214D")),
                          fontSize: 20,
                          fontFamily: 'Brandon'),
                      children: [
                    TextSpan(
                        text: "What fruit salad\ncombo do you want today?",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ])),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                      child: CustomTextFiled("Search for fruit salad combos",
                          iconField: Padding(
                            padding: EdgeInsets.only(left: 24, right: 16),
                            child:
                                SvgPicture.asset("assets/images/ic_search.svg"),
                          ),
                          onChanched: null)),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: InkResponse(
                      child:
                          SvgPicture.asset("assets/images/ic_search_filter.svg"),
                      onTap: () {},
                    ),
                  )
                ],
              )),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Recommended Combo",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(int.parse("0xFF27214D"))),
              )),
            // Row(
            //   children: [
            //     Expanded(
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: 5,
            //         itemBuilder: (context, i) => CardProduct(index: i,)
            //       ),
            //     )
            //   ],
            // ),
            Container(
              color: Colors.red,
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i) => CardProduct(index: i,)
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TabButton(categories[0], selectedTab: selectedTab, onPressed: () {
                            setState(() {
                              selectedTab = categories[0];
                            });
                          }),
                          TabButton(categories[1], selectedTab: selectedTab, onPressed: () {
                            setState(() {
                              selectedTab = categories[1];
                            });
                          }),
                          TabButton(categories[2], selectedTab: selectedTab, onPressed: () {
                            setState(() {
                              selectedTab = categories[2];
                            });
                          }),
                          TabButton(categories[3], selectedTab: selectedTab, onPressed: () {
                            setState(() {
                              selectedTab = categories[3];
                            });
                          }),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i) => CardProduct(index: i,)
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}
