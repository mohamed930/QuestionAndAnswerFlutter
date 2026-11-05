import 'package:flutter/material.dart';
import 'AnswerOption.dart';

class AnswerComponet extends StatefulWidget {
  final List<String> answers;
  final ValueChanged<String?> onAnswerSelected;

  const AnswerComponet({
    super.key,
    required this.answers,
    required this.onAnswerSelected,
  });

  @override
  State<AnswerComponet> createState() => _AnswerComponentState();
}

class _AnswerComponentState extends State<AnswerComponet> {
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: List.generate(widget.answers.length, (index) {
        final answer = widget.answers[index];

        return AnswerOption(
          answer: answer,
          groupValue: selectedAnswer,
          onChanged: (value) {
            setState(() {
              selectedAnswer = value;
              widget.onAnswerSelected(value);
            });
          },
        );
      }),
    );
  }
}
