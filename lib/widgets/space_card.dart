import 'package:cozy_carikos/models/space.dart';
import 'package:cozy_carikos/pages/detail_page.dart';
import 'package:cozy_carikos/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage(space);
        }));
      },
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
                height: 110,
                width: 130,
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      space.imageUrl,
                      width: 130,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/icon_star.png",
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${space.raiting}/5',
                              style: whiteTextStyle.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: "\$${space.price}",
                  style: purplekTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                      text: ' / month',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "${space.city}, ${space.country}",
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
