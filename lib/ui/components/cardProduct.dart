import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProduct extends StatelessWidget {
  int index;
  
  CardProduct({this.index});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          margin: index == 0 ? EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 48) : EdgeInsets.only(right: 25, top: 25, bottom: 48),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color(int.parse("0x33909090")),
                offset: Offset(0.0, 20.0), //(x,y)
                blurRadius: 25.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 100,
                color: Colors.green,
              ),
            // Stack(
            //   children: [
            //     // Container(
            //     //   color: Colors.blue,
            //     //   width: 200,
            //     // ),
            //     Positioned(
            //       child: Container(
            //         color: Colors.yellow,
            //         padding: EdgeInsets.all(8),
            //         child: Image.asset("assets/images/card_1.png", width: 80, height: 80,),
            //       ),
            //     ),
            //     Positioned(
            //       right: 0,
            //       child: Container(
            //         color: Colors.green,
            //         child: InkResponse(
            //           child: Icon(
            //             Icons.favorite_border_outlined,
            //             color: Color(int.parse("0xFFFFA451")),
            //           ),
            //           onTap: () {},
            //         ),
            //       ) 
            //     )
            //   ],
            // ),
            Text(
              "kfsdjsdfkjsfjnsnfndsjf",
              style: TextStyle(
                color: Color(int.parse("0xFF27214D")),
                fontWeight: FontWeight.w500,
                fontSize: 16
              ),
            ),
            Center(
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/ic_money.svg"),
                      Text(
                        "23423",
                        style: TextStyle(
                          color: Color(int.parse("0xFFF08626")),
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  InkResponse(
                    child: Container(
                      width: 24,
                      height: 24,
                      child: Center(
                        child:
                            SvgPicture.asset("assets/images/ic_card_add.svg"),
                      ),
                      decoration: BoxDecoration(
                          color: Color(int.parse("0xFFFFF2E7")),
                          shape: BoxShape.circle),
                    ),
                  )
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
