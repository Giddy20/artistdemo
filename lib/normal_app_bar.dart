import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'icons/custom_arrow_icons.dart';


class MyAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
          ),),),

          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Young Kannon',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Oswald',
                  fontSize: 24
              ),
            ),

          ),),

          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(CustomArrow.share, size: 18,),),)

        ],
      ),
    );
  }
}