import 'package:flutter/material.dart';

import '../../../theme.dart';


class CostumAppBar extends StatelessWidget {
  const CostumAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4,
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35,),
                Text("Welcome Healthy", style: primaryTextStyle.copyWith(color: Colors.white, fontSize: 25) ),
                SizedBox(height: 8,),
                Text("Friends", style: primaryTextStyle.copyWith(color: Colors.white, fontSize: 25) ),
              ],
            ),
            Image.asset("assets/baby.png")
          ],
        ),
      ),
    );
  }
}