import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class OperationList extends StatelessWidget {
  const OperationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16, top: 5, bottom: 7),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 16, bottom: 2, top: 2),
              width: 123,
              height: 123,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppBlackColor10,
                    blurRadius: 5,
                    spreadRadius: 3,
                    offset: Offset(4,4),
          
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
                color: AppBlueColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/Icon.png"),
                  SizedBox(height: 9,),
                  Text("Money\nTransfer", textAlign: TextAlign.center, style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),)
                ],
              )
            ),
          );
      },),
    );
  }
}






