import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:road_mempany/constants/fonts.dart';
import 'package:road_mempany/screens/agree_screen.dart';

import '../constants/colors.dart';
import '../utils/util.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  double _height = 0;
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
    _height = getMediaSafeHeight(context);
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
                _buildIntro5(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntro1() {
    return Container(
      color: kColorBlue10,
      padding: EdgeInsets.fromLTRB(16, _height * 0.0781, 16, _height * 0.1807),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'The \nCryptocurrency\nof Mempany',
                    style: kTsRoboto22,
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'MCT / MEMBERS',
                    style: kTsRoboto36,
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '멤퍼니 가상화폐',
                    style: kTsNoto26.copyWith(
                      color: kColorBlue6,
                    ),
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  )
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/logo-circle.png',
              width: 110,
              height: 110,
            ),
            SizedBox(
              height: _height * 0.0580,
            ),
            Text(
              '포인트의 현물화 실현,\n토큰의 글로벌 서비스 결제',
              style: kTsNoto22.copyWith(
                color: kColorWhite9,
              ),
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(
              height: _height * 0.0647,
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
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
      ),
    );
  }

  Widget _buildIntro2() {
    return Container(
      color: kColorBlue10,
      padding: EdgeInsets.fromLTRB(16, _height * 0.0781, 16, _height * 0.1807),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Small data\nproduction system',
                    style: kTsRoboto22,
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'DATA FACTORY',
                    style: kTsRoboto36,
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    '스몰데이터 생산 시스템',
                    style: kTsNoto26.copyWith(
                      color: kColorBlue6,
                    ),
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
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
            SizedBox(
              height: _height * 0.0390,
            ),
            Text(
              '24시간을 비즈니스로!\n평범한 일상이 돈이 된다.',
              style: kTsNoto22,
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(
              height: _height * 0.0647,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
                    color: kColorBlue10,
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
      ),
    );
  }

  Widget _buildIntro3() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding:
              EdgeInsets.fromLTRB(16, _height * 0.1537, 16, _height * 0.1807),
          color: const Color(0xfff2f4f5),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MEMPANY-PAY',
                  style: kTsRoboto46,
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: _height * 0.0622,
                ),
                Image.asset(
                  'assets/images/intro3-1.png',
                ),
                const Spacer(),
                Text(
                  '온·오프라인 글로벌 마켓,\n돈처럼 쓰는 포인트(멤머니)',
                  style: kTsNoto22.copyWith(
                    color: kColorBlack9,
                  ),
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: _height * 0.0647,
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
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: _height * 0.0647,
          ),
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/intro3-2.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 38,
                    height: 4,
                    color: const Color(0xffd91226),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                width: 90,
                height: 4,
                color: const Color(0xff194ca0),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIntro4() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding:
              EdgeInsets.fromLTRB(16, _height * 0.0821, 16, _height * 0.1807),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.46, 0.456),
              end: Alignment(0.821, 1.0),
              colors: [Color(0xff006449), Color(0xc0005840), Color(0x40003225)],
              stops: [0.0, 0.521, 1.0],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'The relay multi savings system\nOf Global points',
                        style: kTsRoboto18.copyWith(
                          color: kColorGreen9,
                        ),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'RELAY MYLTI POINT',
                        style: kTsRoboto36.copyWith(
                          color: kColorGreen9,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '릴레이 멀티 포인트(멤머니)',
                        style: kTsNoto26.copyWith(
                          color: kColorWhite99,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  '급여야, 포인트야..\n돈은 썼는데 왜 돈을 줘?',
                  style: kTsNoto22.copyWith(
                    color: kColorWhite9,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _height * 0.0647,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        color: kColorWhite10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // 이미지
        Container(
          padding: const EdgeInsets.only(
            bottom: 1,
          ),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/intro4.png',
                height: _height * 0.2018,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIntro5() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, _height * 0.0821, 16, _height * 0.1807),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.46, 0.456),
          end: Alignment(0.821, 1.0),
          colors: [Color(0xff006449), Color(0xc0005840), Color(0x40003225)],
          stops: [0.0, 0.521, 1.0],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'The Store for members’\nProfitable business',
                    style: kTsRoboto18.copyWith(
                      color: kColorGreen9,
                    ),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'M - SHOPING',
                    style: kTsRoboto36.copyWith(
                      color: kColorGreen9,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '멤퍼니 크리에이터 스토어',
                    style: kTsNoto26.copyWith(
                      color: kColorWhite99,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/intro5.png',
            ),
            SizedBox(
              height: _height * 0.0651,
            ),
            Text(
              '앱만 설치하면 나도 CEO,\n돈은 플랫폼이 벌어준다.',
              style: kTsNoto22.copyWith(
                color: kColorWhite9,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: _height * 0.0647,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        // color: kColorBlue10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
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
                        color: kColorWhite10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                        border: Border.all(
                          width: 1,
                          color: kColorWhite10,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AgreeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 48,
                    height: 44,
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-right.svg',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
