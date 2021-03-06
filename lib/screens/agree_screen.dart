import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:road_mempany/constants/fonts.dart';
import 'package:road_mempany/screens/agree_detail_screen.dart';
import 'package:road_mempany/screens/mnemonic/mnemonic_start_screen.dart';
import 'package:road_mempany/utils/widget_util.dart';
import 'package:road_mempany/widgets/disable_button.dart';
import 'package:road_mempany/widgets/enable_button.dart';

import '../constants/colors.dart';
import '../utils/util.dart';

class AgreeScreen extends StatefulWidget {
  const AgreeScreen({Key? key}) : super(key: key);

  @override
  State<AgreeScreen> createState() => _AgreeScreenState();
}

class _AgreeScreenState extends State<AgreeScreen> {
  double _height = 0;

  bool _is1 = false;
  bool _is2 = false;
  bool _is3 = false;
  bool _is4 = false;
  bool _is5 = false;
  bool _is6 = false;
  bool _isAll = false;

  bool _isButton = false;

  _selectedAll() {
    setState(() {
      _isAll = !_isAll;
      _is1 = _isAll;
      _is2 = _isAll;
      _is3 = _isAll;
      _is4 = _isAll;
      _is5 = _isAll;
      _is6 = _isAll;
    });
    _isAllCheck();
  }

  _isAllCheck() {
    setState(() {
      if (_is1 && _is2 && _is3 && _is4 && _is5 && _is6) {
        _isAll = true;
      } else {
        _isAll = false;
      }

      if (_is1 && _is2 && _is3 && _is4) {
        _isButton = true;
      } else {
        _isButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _height = getMediaSafeHeight(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/arrow-left.svg',
                    width: 10.0,
                    height: 18.0,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _height * 0.0446,
                    ),
                    Center(
                      child: SvgPicture.asset('assets/icons/logo-blue.svg'),
                    ),
                    SizedBox(
                      height: _height * 0.1308,
                    ),

                    // ??????
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildContent(),
                          // ?????? ????????? ??????
                          GestureDetector(
                            onTap: _selectedAll,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44.0,
                                  height: 44.0,
                                  padding: const EdgeInsets.all(11),
                                  child: SvgPicture.asset(
                                    _isAll
                                        ? 'assets/icons/check-true.svg'
                                        : 'assets/icons/check-false.svg',
                                  ),
                                ),
                                Text(
                                  '?????? ????????? ???????????????.',
                                  style: kTsNoto16.copyWith(
                                    color: kColorBlack10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _isButton
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MnemonicStartScreen(),
                                      ),
                                    );
                                  },
                                  child: const EnableButton(
                                    text: '?????? ????????????',
                                  ),
                                )
                              : const DisableButton(
                                  text: '?????? ????????????',
                                ),
                          Container(),
                        ],
                      ),
                    ),

                    // SizedBox(
                    //   height: _height * 0.0798,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildContent() {
    return Container(
      color: kColorWhite9,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.only(
        left: 14,
        top: 24,
        bottom: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is1 = !_is1;
                  });
                  _isAllCheck();
                },
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is1
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '????????? ???????????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is2 = !_is2;
                  });
                  _isAllCheck();
                },
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is2
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '???????????? ???????????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is3 = !_is3;
                  });
                  _isAllCheck();
                },
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is3
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '??????????????? ?????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is4 = !_is4;
                  });
                  _isAllCheck();
                },
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is4
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '???????????? ???????????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is5 = !_is5;
                  });
                  _isAllCheck();
                },
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is5
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '???????????? ?????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          // ????????? ?????? ?????? ?????? (??????)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _is6 = !_is6;
                  });
                  _isAllCheck();
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SvgPicture.asset(
                        _is6
                            ? 'assets/icons/check-true.svg'
                            : 'assets/icons/check-false.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '????????? ?????? ?????? ?????? (??????)',
                      style: kTsNoto16.copyWith(
                        color: kColorBlack10,
                      ),
                    ),
                  ],
                ),
              ),

              // ????????????
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    createUpDownRoute(
                      const AgreeDetailScreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 90,
                  child: SvgPicture.asset(
                    'assets/icons/agree-all.svg',
                    color: kColorBlue8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
