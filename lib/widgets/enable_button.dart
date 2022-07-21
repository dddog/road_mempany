import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:road_mempany/constants/colors.dart';

import '../constants/fonts.dart';

class EnableButton extends StatelessWidget {
  final String text;
  const EnableButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: kColorBlue9,
        boxShadow: [
          BoxShadow(
            color: kColorBlack10.withOpacity(0.16),
            offset: const Offset(0, 2.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: kTsNoto18.copyWith(
            color: kColorWhite9,
          ),
        ),
      ),
    );
  }
}
