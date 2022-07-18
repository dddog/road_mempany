import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentPage = 0;

  @override
  dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildIntro1(),
                _buildIntro2(),
                _buildIntro3(),
                _buildIntro4(),
                _buildIntro1(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntro1() {
    return Container(
      color: kColorBackground,
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 78),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'The \nCryptocurrency\nof Mempany',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      color: Color(0xff194ca0),
                      fontWeight: FontWeight.w300,
                      height: 1,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                Text(
                  'MCT / MEMBERS',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 36,
                      color: Color(0xff194ca0),
                      letterSpacing: -1.08,
                      fontWeight: FontWeight.w700,
                      height: 1.3888888888888888,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                Text(
                  '멤퍼니 가상화폐',
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 26,
                      color: Color(0xff769ddd),
                      letterSpacing: -1.3,
                      fontWeight: FontWeight.w300,
                      height: 1.2692307692307692,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/intro1.png',
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            '포인트의 현물화 실현,\n토큰의 글로벌 서비스 결제',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 22,
                color: Color(0xfff2f4f5),
                letterSpacing: -1.1,
                fontWeight: FontWeight.w300,
                height: 1.3636363636363635,
              ),
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIntro2() {
    return Container(
      color: kColorBackground,
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 78),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Small data\nproduction system',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      color: Color(0xff194ca0),
                      fontWeight: FontWeight.w300,
                      height: 1,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                Text(
                  'DATA FACTORY',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 36,
                      color: Color(0xff194ca0),
                      letterSpacing: -1.08,
                      fontWeight: FontWeight.w700,
                      height: 1.3888888888888888,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                Text(
                  '스몰데이터 생산 시스템',
                  style: GoogleFonts.notoSans(
                    textStyle: const TextStyle(
                      fontSize: 26,
                      color: Color(0xff769ddd),
                      letterSpacing: -1.3,
                      fontWeight: FontWeight.w300,
                      height: 1.2692307692307692,
                    ),
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/intro2.png',
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            '24시간을 비즈니스로!\n평범한 일상이 돈이 된다.',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 22,
                color: Color(0xfff2f4f5),
                letterSpacing: -1.1,
                fontWeight: FontWeight.w300,
                height: 1.3636363636363635,
              ),
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: kColorBackground,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIntro3() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 170, 16, 78),
      color: const Color(0xfff2f4f5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'MEMPANY-PAY',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 46,
                color: Color(0xe8052f75),
                letterSpacing: -2.3000000000000003,
                fontWeight: FontWeight.w900,
              ),
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          const SizedBox(
            height: 53,
          ),
          Image.asset(
            'assets/images/intro3-1.png',
          ),
          const SizedBox(
            height: 27,
          ),
          Text(
            '멤퍼니 페이',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 22,
                color: Color(0xff052f75),
                letterSpacing: -1.1,
                height: 1.5,
              ),
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
          const Spacer(),
          Text(
            '온·오프라인 글로벌 마켓,\n돈처럼 쓰는 포인트(멤머니)',
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontFamily: 'Noto Sans CJK KR',
                fontSize: 22,
                color: Color(0xff191919),
                letterSpacing: -1.1,
                height: 1.3636363636363635,
              ),
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          const SizedBox(
            height: 57,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0x19, 0x4c, 0xa0, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5,
                    ),
                  ),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(0x76, 0x9d, 0xdd, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIntro4() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.46, 0.456),
          end: Alignment(0.821, 1.0),
          colors: [Color(0xff006449), Color(0xc0005840), Color(0x40003225)],
          stops: [0.0, 0.521, 1.0],
        ),
      ),
    );
  }
}
