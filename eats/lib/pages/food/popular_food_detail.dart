import 'package:eats/utils/dimensions.dart';
import 'package:eats/widgets/app_column.dart';
import 'package:eats/widgets/app_icon.dart';
import 'package:eats/widgets/big_text.dart';
import 'package:eats/widgets/expandable_text.dart';
import 'package:eats/widgets/icon_and_text.dart';
import 'package:eats/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/pho.png"))),
              )),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: "Pho Viet"),
                      SizedBox(height: Dimensions.height20),
                      BigText(text: "Introduction"),
                      SizedBox(height: Dimensions.height20),
                      Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  "Introducing Pho, a Vietnamese culinary masterpiece that tantalizes the taste buds with its harmonious blend of rich broth, delicate rice noodles, and savory meats. This iconic soup, deeply rooted in Vietnamese culture, boasts a fragrant symphony of flavors, elevated by aromatic spices like star anise and cinnamon. Whether laden with succulent beef or tender chicken, each bowl of pho is a culinary adventure, further adorned with fresh herbs, bean sprouts, and zesty lime. Embark on a journey of warmth and satisfaction as you savor the essence of Vietnam in every slurp of this beloved and comforting dish. A Vietnamese culinary masterpiece that tantalizes the taste buds with its harmonious blend of rich broth, delicate rice noodles, and savory meats. This iconic soup, deeply rooted in Vietnamese culture, boasts a fragrant symphony of flavors, elevated by aromatic spices like star anise and cinnamon. Whether laden with succulent beef or tender chicken, each bowl of pho is a culinary adventure, further adorned with fresh herbs, bean sprouts, and zesty lime. Embark on a journey of warmth and satisfaction as you savor the essence of Vietnam in every slurp of this beloved and comforting dish."),
                        ),
                      )
                    ]),
              )),
          //expandable text
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.grey),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(Icons.add, color: Colors.grey)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(text: "\€10 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: const Color(0xFF89dad0)),
            )
          ],
        ),
      ),
    );
  }
}
