import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:road_mempany/constants/colors.dart';
import 'package:road_mempany/constants/fonts.dart';

class AgreeDetailScreen extends StatefulWidget {
  const AgreeDetailScreen({Key? key}) : super(key: key);

  @override
  State<AgreeDetailScreen> createState() => _AgreeDetailScreenState();
}

class _AgreeDetailScreenState extends State<AgreeDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isTitleView = false;
  int _currentIndex = 0;
  final List<String> _titleList = [
    '서비스 이용약관(필수)',
    '개인정보 처리방침(필수)',
    '전자상거래 약관(필수)',
    '전자금융 거래약관(필수)',
    '광고수신 동의(선택)',
    '마케팅 정보 수신동의(선택)',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isTitleView) {
          setState(() {
            _isTitleView = true;
          });
        }
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isTitleView) {
          setState(() {
            _isTitleView = false;
          });
        }
      }
    });
  }

  _onSelected(int index) {
    setState(() {
      if (index != _currentIndex) {
        _scrollController.jumpTo(0);
      }
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNavi(context),
              Expanded(
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          _buildTitleList(),

                          // 내용
                          Container(
                            padding: const EdgeInsets.only(
                              top: 30,
                              bottom: 11,
                              left: 20,
                              right: 20,
                            ),
                            child: SelectableText(
                                '''법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 
계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항
이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항

약관 만들 때까지 그냥 아무거나 복사해 주세요.
이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항
약관 만들 때까지 그냥 아무거나 복사해 주세요. 이용 제한 조치, 부정 이용 행위를 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 
계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항
이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항

약관 만들 때까지 그냥 아무거나 복사해 주세요.
이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항
약관 만들 때까지 그냥 아무거나 복사해 주세요. 이용 제한 조치, 부정 이용 포함하여 서비스의 원활한 운영에 지장을 주는  행위에 대한 방지 및 제재, 계정 도용 및 부정거래 방지, 약관 개정 등의 고지사항 약관 만들 때까지 그냥 아무거나 복사해 주세요.
'''),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        if (_isTitleView) _buildTitleList(),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTitleList() {
    return Container(
      height: 302,
      width: double.infinity,
      color: kColorBlue10,
      padding: const EdgeInsets.only(
        top: 24,
        left: 20,
        right: 7,
        bottom: 14,
      ),
      child: Column(
        children: [
          ..._titleList
              .asMap()
              .entries
              .map((e) => _buildTitle(e.key, e.value))
              .toList()
        ],
      ),
    );
  }

  Column _buildTitle(int index, String title) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            _onSelected(index);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: _currentIndex == index
                    ? kTsNoto17.copyWith(
                        color: kColorYellow8,
                      )
                    : kTsNoto16.copyWith(
                        color: kColorWhite9,
                      ),
              ),
              Container(
                width: 34,
                height: 34,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 11,
                ),
                child: SvgPicture.asset(
                  'assets/icons/arrow-right.svg',
                  color: kColorWhite10,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Row _buildNavi(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            width: 48.0,
            height: 44.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: SvgPicture.asset(
              'assets/icons/close.svg',
            ),
          ),
        ),
        Text(
          _titleList[_currentIndex],
          style: kTsNoto20.copyWith(
            color: kColorBlack9,
          ),
        ),
        const SizedBox(
          width: 48,
          height: 44,
        )
      ],
    );
  }
}
