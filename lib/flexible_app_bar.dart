import 'package:flutter/material.dart';

import 'icons/custom_arrow_icons.dart';





class MyFlexiableAppBar extends StatelessWidget {

  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
      padding:  EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: new BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/image.png'), fit: BoxFit.fitWidth),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text("St. Louis, MO",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 14,
              color: Color(0xFFCCCCCC)
            ),
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle,

                ),
              ),
              SizedBox(width: 10,),

              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              )
            ],
          ),
          SizedBox(height: 12,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                      "25K",
                      style: TextStyle(
                          color: Color(0xFFC8A448),
                          fontFamily: 'Oswald',
                          fontSize: 31.34
                      )
                  ),
                  Text("Reactions",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.06
                      )
                  ),
                  SizedBox(height: 7,),
                  Icon(Icons.back_hand, color: Color(0xFFC8A448),)
                ],),

              Container(
                width: 110.42,
                height: 106.31,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFC8A448),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image3.png"),
                ),
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const[
                      Text(
                          "75",
                          style: TextStyle(
                              color: Color(0xFFC8A448),
                              fontFamily: 'Oswald',
                              fontSize: 31.34
                          )
                      ),
                      Text(
                          "/78",
                          style: TextStyle(
                              color: Color(0xFF777777),
                              fontFamily: 'Oswald',
                              fontSize: 14.25
                          )
                      ),
                    ],
                  ),

                  const Text("Rounds Won",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.06
                      )
                  ),
                  SizedBox(height: 7,),
                  const Icon(Icons.check, color: Color(0xFFC8A448),)
                ],),
            ],
          ),

          Container(
            height: 74,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Aggression",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF777777)
                ),),
                Text("Performance",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777)
                  ),),
                Text("Lyrical",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777)
                  ),),
                Text("Delivery",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777)
                  ),),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: const [
                    Text(
                        "Displaying:",
                        style: TextStyle(
                            color: Color(0xFF777777),
                            fontFamily: 'Poppins',
                            fontSize: 12.0
                        )
                    ),
                    Text(
                        " 4 of 32 Battles",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                        )
                    ),
                  ],
                ),

                Row(
                  children: const [
                    Text(
                        "Date:",
                        style: TextStyle(
                            color: Color(0xFF777777),
                            fontFamily: 'Poppins',
                            fontSize: 12.0
                        )
                    ),
                    Text(
                        " Descending",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                        )
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 15,)
                  ],
                ),


              ],),
          ),
        ],),
    );
  }
}