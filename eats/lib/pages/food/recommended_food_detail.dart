import 'package:eats/utils/dimensions.dart';
import 'package:eats/widgets/app_icon.dart';
import 'package:eats/widgets/big_text.dart';
import 'package:eats/widgets/expandable_text.dart';
import 'package:eats/widgets/small_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(size: Dimensions.font26, text: "Com Tam")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: const Color(0xFF89dad0),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/images/riz.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: Text(
                    "Com Tam is a beloved dish that reflects the rich culinary tapestry of Vietnam. This street food staple features a bed of fragrant broken rice grains, distinct for their unique texture. The dish is adorned with grilled pork chops (Suon Nuong), marinated to perfection with a blend of garlic, soy sauce, and fish sauce. Com Tam is a medley of flavors and textures, often accompanied by Bi (shredded pork skin) for a chewy contrast, Cha Trung (Vietnamese meatloaf) for savory richness, and Goi Cuon (spring rolls) for a refreshing crunch. The ensemble is complete with a side of pickled vegetables and a dipping sauce called Nuoc Mam, a flavorful concoction of fish sauce, lime juice, garlic, and chili. This delightful combination of broken rice and flavorful accompaniments encapsulates the essence of Vietnamese cuisine, offering a satisfying and diverse dining experience. Com Tam has earned its place as a cherished dish, enjoy. Com Tam is a beloved dish that reflects the rich culinary tapestry of Vietnam. This street food staple features a bed of fragrant broken rice grains, distinct for their unique texture. The dish is adorned with grilled pork chops (Suon Nuong), marinated to perfection with a blend of garlic, soy sauce, and fish sauce. Com Tam is a medley of flavors and textures, often accompanied by Bi (shredded pork skin) for a chewy contrast, Cha Trung (Vietnamese meatloaf) for savory richness, and Goi Cuon (spring rolls) for a refreshing crunch. The ensemble is complete with a side of pickled vegetables and a dipping sauce called Nuoc Mam, a flavorful concoction of fish sauce, lime juice, garlic, and chili. This delightful combination of broken rice and flavorful accompaniments encapsulates the essence of Vietnamese cuisine, offering a satisfying and diverse dining experience. Com Tam has earned its place as a cherished dish, enjoy.  a Vietnamese culinary masterpiece that tantalizes the taste buds with its harmonious blend of rich broth, delicate rice noodles, and savory meats. This iconic soup, deeply rooted in Vietnamese culture, boasts a fragrant symphony of flavors, elevated by aromatic spices like star anise and cinnamon. Whether laden with succulent beef or tender chicken, each bowl of pho is a culinary adventure, further adorned with fresh herbs, bean sprouts, and zesty lime. Embark on a journey of warmth and satisfaction as you savor the essence of Vietnam in every slurp of this beloved and comforting dish."),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Color(0xFF89dad0),
                    icon: Icons.remove),
                BigText(
                    text: "\€12.32 " + " X " + " 0 ", size: Dimensions.font26),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Color(0xFF89dad0),
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xFF89dad0),
                    size: 45,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child:
                      BigText(text: "\€10 | Add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: const Color(0xFF89dad0)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
