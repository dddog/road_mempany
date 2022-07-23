import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:road_mempany/constants/fonts.dart';
import 'package:road_mempany/utils/widget_util.dart';
import 'package:road_mempany/widgets/enable_button.dart';
import 'package:road_mempany/widgets/sm_button.dart';

import '../../constants/colors.dart';
import '../../utils/util.dart';

class MnemonicCodeScreen extends StatefulWidget {
  const MnemonicCodeScreen({Key? key}) : super(key: key);

  @override
  State<MnemonicCodeScreen> createState() => _MnemonicCodeScreenState();
}

class _MnemonicCodeScreenState extends State<MnemonicCodeScreen> {
  double _height = 0;
  final List<String> _codeList = [
    'morning',
    'health',
    'Moment',
    'idea',
    'price',
    'cost',
    'man',
    'gate',
    'departure',
    'airline',
    'liquid',
    'arrival',
  ];
  @override
  Widget build(BuildContext context) {
    _height = getMediaSafeHeight(context);
    return Scaffold(
      backgroundColor: kColorWhite10,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildNavi(context),
            Container(
              width: double.infinity,
              height: 8,
              color: kColorGrey7,
            ),
            SizedBox(
              height: _height * 0.0492,
            ),

            // 니모닉 코드
            Container(
              color: kColorBlue10,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 22,
                right: 14,
                left: 14,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runSpacing: 10,
                      spacing: 16,
                      children: [
                        ..._codeList
                            .asMap()
                            .entries
                            .map((e) => Text(
                                  '${e.key + 1}.${e.value}',
                                  style: kTsRoboto18Mnemonic.copyWith(
                                    color: kColorWhite9,
                                  ),
                                ))
                            .toList()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.0481,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '별도 파일 및 종이에 기록해 주세요',
                          style: kTsNoto14.copyWith(
                            color: kColorYellow8,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(
                              text: _codeList
                                  .asMap()
                                  .entries
                                  .map((e) => '${e.key + 1}.${e.value}')
                                  .toList()
                                  .join(', '),
                            ),
                          );
                          showSnackBar(content: '복사 완료', context: context);
                        },
                        child: const SmButton(text: '복사하기'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: _height * 0.0352,
            ),

            // 느낌표 알림
            SvgPicture.asset(
              'assets/icons/warning.svg',
            ),

            SizedBox(
              height: _height * 0.0211,
            ),

            Text(
              '니모닉 코드는 반드시 순서대로 기록하세요.',
              style: kTsNoto18.copyWith(
                color: kColorBlack10,
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            Text(
              '니모닉 코드는 블록체인 지갑에서 별도로 사용되는\n영문 암호입니다. 코드를 분실하시면 시스템 오류와\n단말기 분실 시 지갑을 복원할 수 없으며,  보유중인\n자산도 영구적으로 잃게 되오니 잘 보관해 주십시오.',
              style: kTsNoto15.copyWith(
                color: kColorBlack10,
              ),
            ),

            const Spacer(
              flex: 2,
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 11,
                horizontal: 35,
              ),
              color: kColorWhite9,
              child: Text(
                '니모닉 코드의 관리 부실로 인한 해킹 및\n자산 분실 책임은 회사가 지지 않습니다.',
                style: kTsNoto15.copyWith(
                  color: kColorRed10,
                ),
              ),
            ),

            // SizedBox(
            //   height: _height * 0.0492,
            // ),
            const Spacer(
              flex: 1,
            ),

            GestureDetector(
              onTap: () {},
              child: const EnableButton(
                text: '코드 백업하기',
              ),
            ),

            // SizedBox(
            //   height: _height * 0.0704,
            // ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavi(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                color: kColorBlack10,
              ),
            ),
          ),
          Text(
            '니모닉 코드 백업',
            style: kTsNoto20.copyWith(
              color: kColorBlack9,
            ),
          ),
          const SizedBox(
            width: 44,
            height: 44,
          ),
        ],
      ),
    );
  }
}
