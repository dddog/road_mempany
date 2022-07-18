import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mempany/screens/intro_screen.dart';

import '../constants/colors.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      body: Container(
        padding: const EdgeInsets.fromLTRB(
          75,
          150,
          75,
          66,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Global multi points & Small data factory',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: kColorTextWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      letterSpacing: -0.16,
                      height: 1.25,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ],
            ),
            const Spacer(),
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
            const SizedBox(
              height: 108,
            ),
            Text(
              'Copyright @ 2022 MEMPANY. All Rights Reserved',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 12,
                  color: kColorCopyright,
                  letterSpacing: -0.36,
                  fontWeight: FontWeight.w300,
                  height: 1.583,
                ),
              ),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            )
          ],
        ),
      ),
    );
  }
}
