import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:road_mempany/constants/colors.dart';
import 'package:road_mempany/constants/fonts.dart';

class SmButton extends StatelessWidget {
  final String text;
  const SmButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.0),
        border: Border.all(
          width: 0.8,
          color: kColorGrey8,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: kTsNoto16.copyWith(
          color: kColorWhite9,
        ),
      ),
    );
  }
}
