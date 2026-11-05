import 'package:flutter/material.dart';

enum Font {
  light(FontWeight.w300),
  regular(FontWeight.w400),
  medium(FontWeight.w500),
  semiBold(FontWeight.w600),
  bold(FontWeight.w700);

  const Font(this.weight);

  final FontWeight weight;

  String get family => 'Quicksand';

  TextStyle get style => TextStyle(fontFamily: family, fontWeight: weight);
}
