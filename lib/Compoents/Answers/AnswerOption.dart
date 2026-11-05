import 'package:flutter/material.dart';
import '../../Customs + Extensions/Font.dart';

class AnswerOption extends StatelessWidget {
  final String answer;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const AnswerOption({
    super.key,
    required this.answer,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2,
      children: [
        Radio<String>(
          value: answer,
          groupValue: groupValue,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4),
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            answer,
            style: Font.semiBold.style.copyWith(fontSize: 14),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}