import 'package:flutter/material.dart';

import '../Customs + Extensions/Font.dart';

class Mainbuttoncomponets extends StatefulWidget {

  String? answer;

  Mainbuttoncomponets({super.key,this.answer});

  @override
  State<Mainbuttoncomponets> createState() => _MainbuttoncomponetsState();
}

class _MainbuttoncomponetsState extends State<Mainbuttoncomponets> {

  String? answer;

  _MainbuttoncomponetsState({this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          _checkAnswer();
        },
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Confirm Answer',
          style: Font.bold.style.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String _checkAnswer() {
    return "";
  }
}
