import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Good Morning",
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppBlackColor),
          ),
          Text(
            "Mohsin Raza",
            style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppBlackColor),
          ),
        ],
      ),
    );
  }
}