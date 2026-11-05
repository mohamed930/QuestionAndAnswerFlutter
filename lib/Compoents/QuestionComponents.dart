import 'package:flutter/material.dart';
import '../Customs + Extensions/Font.dart';

class Questioncomponents extends StatelessWidget {
  final String title;

  const Questioncomponents({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Font.semiBold.style.copyWith(fontSize: 19)
    );
  }
}
