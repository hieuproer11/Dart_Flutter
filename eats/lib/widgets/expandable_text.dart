import 'package:eats/utils/dimensions.dart';
import 'package:eats/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String SecondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.3;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      SecondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      SecondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SecondHalf.isEmpty
          ? SmallText(
              color: Colors.black12, size: Dimensions.font16, text: firstHalf)
          : Column(
              children: [
                SmallText(
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + SecondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: Dimensions.font16,
                        text: "Show more",
                        color: Color(0xFF89dad0),
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Color(0xFF89dad0),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
