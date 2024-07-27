import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 58, horizontal: 29.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/search.png', width: 26, height: 26),

          Text(
            "Recent Notes",
            style: TextStyle(
                fontSize: 16.035,
                fontWeight: FontWeight.w600,
                color: Color(0xff14304A),
                fontFamily: "Inter",
                letterSpacing: 0.08,

                ),
          ),
          Image.asset('assets/nav-left.png', width: 26, height: 26),
        ],
      ),
    );
  }
}



