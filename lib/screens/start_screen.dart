import 'package:flutter/material.dart';
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
                  Image.asset(
                    'assets/images/logo.png',
                  ),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/start_button.png',
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
