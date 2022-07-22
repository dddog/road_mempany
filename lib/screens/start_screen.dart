import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mempany/screens/intro_screen.dart';
import 'package:road_mempany/utils/util.dart';

import '../constants/colors.dart';
import '../constants/fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  double _height = 0;
  @override
  Widget build(BuildContext context) {
    _height = getMediaSafeHeight(context);

    return Scaffold(
      backgroundColor: kColorBlue10,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/logo-white.svg'),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Global multi points & Small data factory',
                    style: GoogleFonts.roboto(
                      textStyle: kTsRoboto16,
                    ),
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ],
              ),
              SizedBox(
                height: _height * 0.3995,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreen(),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 76.00,
                      height: 76.00,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorBlue6,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF6699CC),
                            offset: Offset(0, 14.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 86.0,
                          height: 86.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorBlue10,
                          ),
                        ),
                        Container(
                          width: 64.0,
                          height: 64.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: kColorWhite9,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                38,
                              ),
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/start.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _height * 0.1227,
              ),
              Text(
                'Copyright @ 2022 MEMPANY. All Rights Reserved',
                style: kTsRoboto12,
                textHeightBehavior:
                    const TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
