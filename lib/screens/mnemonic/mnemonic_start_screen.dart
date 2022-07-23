import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:road_mempany/constants/fonts.dart';
import 'package:road_mempany/utils/widget_util.dart';

import '../../constants/colors.dart';
import '../../utils/util.dart';
import 'mnemonic_code_screen.dart';

class MnemonicStartScreen extends StatefulWidget {
  const MnemonicStartScreen({Key? key}) : super(key: key);

  @override
  State<MnemonicStartScreen> createState() => _MnemonicStartScreenState();
}

class _MnemonicStartScreenState extends State<MnemonicStartScreen> {
  double _height = 0;
  @override
  Widget build(BuildContext context) {
    _height = getMediaSafeHeight(context);
    return Scaffold(
      backgroundColor: kColorBlue10,
      body: SafeArea(
        child: Column(
          children: [
            _buildNavi(context),
            SizedBox(
              height: _height * 0.0680,
            ),
            Center(
              child: Text(
                'MEMPANY\nBlockchain Wallet',
                textAlign: TextAlign.center,
                style: kTsRoboto36.copyWith(
                  color: kColorWhite9,
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.0633,
            ),

            // Circle logo
            Image.asset(
              'assets/images/logo-circle.png',
              width: 80,
              height: 80,
            ),

            const Spacer(),

            // 하단부
            Center(
              child: Text(
                'Mempany Crypto Currency',
                textAlign: TextAlign.center,
                style: kTsRoboto20.copyWith(
                  color: kColorWhite9,
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.0340,
            ),

            // bottom button
            Container(
              width: double.infinity,
              height: 44,
              color: kColorBlue9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      right: 40,
                    ),
                    child: Text(
                      '지갑복원',
                      style: kTsNoto18.copyWith(
                        color: kColorWhite9,
                      ),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 17,
                    color: kColorBlue6,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        createUpDownRoute(
                          const MnemonicCodeScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 40,
                      ),
                      child: Text(
                        '지갑생성',
                        style: kTsNoto18.copyWith(
                          color: kColorWhite9,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: _height * 0.1431,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildNavi(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 44,
            height: 44,
            padding: const EdgeInsets.symmetric(
              vertical: 13,
              horizontal: 17,
            ),
            child: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              color: kColorWhite10,
            ),
          ),
        )
      ],
    );
  }
}
