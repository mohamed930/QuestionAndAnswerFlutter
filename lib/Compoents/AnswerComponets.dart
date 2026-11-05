import 'dart:ffi';

import 'package:flutter/material.dart';

class AnswerComponet extends StatefulWidget {

  List<String> answers;

  AnswerComponet({super.key,required this.answers});

  @override
  State<AnswerComponet> createState() => _AnswerComponetState(answers: answers);
}

class _AnswerComponetState extends State<AnswerComponet> {

  List<String> answers;

  _AnswerComponetState({required this.answers});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
