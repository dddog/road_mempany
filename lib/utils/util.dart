import 'package:flutter/material.dart';

double getMediaPaddingTop(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getMediaSafeHeight(BuildContext context) {
  return MediaQuery.of(context).size.height - getMediaPaddingTop(context);
}

double getMediaHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getMediaWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
