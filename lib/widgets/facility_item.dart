import 'package:cozy_carikos/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int numItem;

  FacilityItem({this.imageUrl, this.name, this.numItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: "$numItem",
            style: purplekTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: name,
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
