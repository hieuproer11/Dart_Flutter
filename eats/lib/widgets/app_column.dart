import 'package:eats/utils/dimensions.dart';
import 'package:eats/widgets/big_text.dart';
import 'package:eats/widgets/icon_and_text.dart';
import 'package:eats/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Color(0xFF89dad0),
                        size: 15,
                      )),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.7"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "2500"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "commentaires"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "Normale",
                iconColor: Colors.yellow),
            IconAndText(
                icon: Icons.location_on,
                text: "2.3km",
                iconColor: Color(0xFF89dad0)),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "25min",
                iconColor: Colors.redAccent),
          ],
        )
      ],
    );
  }
}
