import 'package:flutter/material.dart';

import 'card.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 199,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16, right: 6),
        itemCount: 2,
        itemBuilder: (context, index) {
          return MCard();
        },
      ),
    );
  }
}