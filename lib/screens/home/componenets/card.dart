import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class MCard extends StatelessWidget {
  const MCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 199,
      width: 344,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppBlueColor,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(28)),
              child: Image(image: AssetImage("assets/images/Ellipse 2.png"),),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(28)),
              child: Image(image: AssetImage("assets/images/Ellipse 1.png"),),
            ),
          ),
          Positioned(
            left: 29,
            top: 48,
            child: Text('CARD NUMBER', style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),),
          ),
          Positioned(
            left: 29,
            top: 65,
            child: Text('**** **** **** 8479', style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          ),
          Positioned(
            right: 21,
            top: 35,
            child: Image.asset("assets/images/Mastercard.png"),

          ),
          Positioned(
            left: 29,
            bottom: 45,
            child: Text("CARDHOLDER NAME", style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),),
          ),
          Positioned(
            left: 29,
            bottom: 21,
            child: Text("Mohsin Raza", style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          ),
          Positioned(
            left: 204,
            bottom: 45,
            child: Text("EXPIRY DATE", style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),),
          ),
          Positioned(
            left: 204,
            bottom: 21,
            child: Text("06/26", style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          ),

        ],
      ),
    );
  }
}
