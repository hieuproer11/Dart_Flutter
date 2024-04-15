import 'package:eats/utils/dimensions.dart';
import 'package:eats/widgets/big_text.dart';
import 'package:flutter/material.dart';

class PanierBody extends StatelessWidget {
  const PanierBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [BigText(text: "Le panier")],
            ),
          )
        ],
      ),
    );
  }
}
