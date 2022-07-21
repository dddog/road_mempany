import 'package:flutter/material.dart';
import 'package:road_mempany/constants/fonts.dart';

import '../constants/colors.dart';

class DisableButton extends StatelessWidget {
  final String text;
  const DisableButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        color: kColorWhite9,
        boxShadow: [
          BoxShadow(
            color: kColorBlack10.withOpacity(0.16),
            offset: const Offset(0, 2.0),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: kTsNoto18,
        ),
      ),
    );
  }
}
