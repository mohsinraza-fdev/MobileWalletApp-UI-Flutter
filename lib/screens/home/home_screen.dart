import 'dart:ui';

import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'componenets/card_list.dart';
import 'componenets/custom_app_bar.dart';
import 'componenets/header_text.dart';
import 'componenets/operation_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            CustomAppBar(),
            SizedBox(
              height: 25,
            ),
            HeaderText(),
            CardList(),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 13, top: 19),
              child: Row(
                children: [
                  Text("Operation", style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppBlackColor
                  ),)
                ],
              ),
            ),
            OperationList(),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 13, top: 19),
              child: Text("Transaction history", style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppBlackColor
                  ),)
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200,
                maxHeight: 250
              ),
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 3,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 62,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(left: 24, top: 0, bottom: 10, right: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppBlackColor10,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(8, 8)
            
                        ),
                      ]
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                      leading: Container(child: Image.asset("assets/images/Ellipse 6.png"),),
                      title: Container(
                        padding: EdgeInsets.only(bottom: 7, left: 10, top: 2),
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Uber Ride", style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppBlackColor
                            ),),
                            Text("1st Apr 2021", style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppGreyColors
                            ),),
                          ],
                        ),
                      ),
                      )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

