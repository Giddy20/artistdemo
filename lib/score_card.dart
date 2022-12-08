import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'flexible_app_bar.dart';
import 'normal_app_bar.dart';


class ScoreCard extends StatefulWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

const double onAlign = -1;
const double offAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;
Widget scores = StatListWidget(medal:  Icon(FontAwesomeIcons.medal, color: Color(0xFFE75C21), size: 10,),artist: "Young Kannon",first: "18K", second: "12K",third: "3k",  total: "33.2K",);

Rpc(){
  print("hdhdhddj");
  scores = StatListWidget(medal:  Icon(FontAwesomeIcons.eyeSlash, color: Color(0xFFE75C21), size: 10,),artist: "Young Kannon",first: "18", second: "12",third: "3",  total: "33.2",);
}
class _ScoreCardState extends State<ScoreCard> {

  double width = 63.81;
  double height = 34;
  double xAlign = 0.0;
  Color? loginColor;
  Color? signInColor;

  bool opened = false;

  bool active = false;



  @override
  void initState() {
    super.initState();
    xAlign = onAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

   Rpc(){
    setState(() {
      print("yellow");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: MyAppBar(),
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: MediaQuery.of(context).size.height * 0.32,
            flexibleSpace: FlexibleSpaceBar(
              background: MyFlexiableAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                children: [
                  Divider(color: Colors.white,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("BATTLE STATS",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 18,
                        color: Colors.white
                      ),),

                      Row(
                        children: [
                          Text("Show My Scores",
                          style: TextStyle(
                            color: Color(0xFF777777),
                            fontSize: 12
                          ),),
                          SizedBox(width: 5,),
                          Center(
                            child: CustomToggle(onTap: Rpc),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  ExpansionListWidget(title: "vs Tay Roc",),
                  ExpansionListWidget(title: "vs Shotgun Suge",),
                  ExpansionListWidget(title: "vs Jerry Wess",),


                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                       color: Color(0xFF3A3A3A),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Load More",
                  style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Oswald",
                        color: Colors.white.withOpacity(0.9)
                  ),),

                        Icon(Icons.more_horiz, color: Colors.white, size: 15,)
                      ],
                    )
                  )

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class ExpansionListWidget extends StatelessWidget {

  String? title;
   ExpansionListWidget({
    super.key,
  this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.white,
      iconColor: Color(0xFF111111),
      tilePadding: EdgeInsets.symmetric(horizontal: 10),
      collapsedBackgroundColor: Colors.white.withOpacity(0.8),
      onExpansionChanged: (e){
      },
      backgroundColor: Colors.white.withOpacity(0.8),
      title: StatTitle(title: title),
      children: <Widget>[
        StatLegendWidget(),
        scores,
        scores,
        Container(
          height: 34,
          padding: EdgeInsets.symmetric(horizontal: 20,),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            height: 34,
            decoration: BoxDecoration(
              color: Color(0xFF111111),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text("WATCH & VOTE",
                style: TextStyle(
                    fontFamily: "Oswald",
                    fontSize: 12,
                    color: Colors.white
                ),),
            ),
          ),
        ),
        Container(height: 20, color: Colors.white,)
      ],
    );
  }
}

class StatTitle extends StatelessWidget {
  String? title;
  StatTitle({
    super.key,
  this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/medal.png",),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(title!,
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Oswald",
                  color: Color(0xFF111111)
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(" from",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Lato",
                      color: Color(0xFF111111)
                  ),
                ),
                Text(" Born Legacy 10",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Lato",
                      color: Color(0xFF111111),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(" on",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Lato",
                      color: Color(0xFF7777777)
                  ),
                ),
                Text(" 12/11/20",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Lato",
                      color: Color(0xFF111111),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatLegendWidget extends StatelessWidget {
  const StatLegendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.36,
            child: Text("ARTIST",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF777777),
              fontFamily: "Oswald"
            ),),
          ),

          Container(
            width: MediaQuery.of(context).size.width * 0.58,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("R1",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text("R2",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text("R3",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text("Total",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StatListWidget extends StatelessWidget {
  String? artist;
  String? first;
  String? second;
  String? third;
  String? total;
  Widget? medal;
  StatListWidget({
  super.key,this.first,this.second,this.third,this.total,this.artist,this.medal
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.36,
            child: Row(
              children: [
                medal!,
                Text(artist!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width * 0.58,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(first!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(second!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(third!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(total!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StatScoresWidget extends StatelessWidget {
  String? artist;
  String? first;
  String? second;
  String? third;
  String? total;
  Widget? medal;
  StatScoresWidget({
  super.key,this.first,this.second,this.third,this.total,this.artist,this.medal
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.36,
            child: Row(
              children: [
                medal!,
                Text(artist!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width * 0.58,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(first!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(second!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(third!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
                Text(total!,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF777777),
                      fontFamily: "Oswald"
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomToggle extends StatefulWidget {
  Function? onTap;

   CustomToggle({Key? key, this.onTap}) : super(key: key);

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}


class _CustomToggleState extends State<CustomToggle> {

  double width = 63.81;
  double height = 34;
  double xAlign = 0.0;
  Icon? icon = Icon(Icons.remove_red_eye_outlined, color: Colors.white,);


  @override
  void initState() {
    super.initState();
    xAlign = onAlign;

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xFF777777),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: Alignment(xAlign, 0),
            duration: Duration(milliseconds: 300),
            child: Container(
              width: width * 0.5,
              height: height,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              child: icon
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                xAlign = onAlign;
                widget.onTap;
                Rpc();
                icon = Icon(Icons.remove_red_eye_outlined, color: Colors.white,);
              });
            },
            child: Align(
              alignment: Alignment(-1, 0),
              child: Container(
                width: width * 0.5,
                padding: EdgeInsets.all(3),
                color: Colors.transparent,
                alignment: Alignment.center,

              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                xAlign = offAlign;
                widget.onTap;
                icon = Icon(FontAwesomeIcons.eyeSlash, color: Colors.white,);
              });
            },
            child: Align(
              alignment: Alignment(1, 0),
              child: Container(
                width: width * 0.5,
                padding: EdgeInsets.all(10),
                color: Colors.transparent,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

