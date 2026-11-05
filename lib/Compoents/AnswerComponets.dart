import 'package:flutter/material.dart';

import '../Customs + Extensions/Font.dart';

class AnswerComponet extends StatefulWidget {
  List<String> answers;

  AnswerComponet({super.key, required this.answers});

  @override
  State<AnswerComponet> createState() => _AnswerComponetState(answers: answers);
}

class _AnswerComponetState extends State<AnswerComponet> {
  List<String> answers;

  _AnswerComponetState({required this.answers});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      child: Column(
        spacing: 4,
        children: [
          Row(
            spacing: 2,
            children: [
              Radio<String>(
                value: answers[0],
                groupValue: answers[0],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: -4
                ),
                onChanged: (String? value) {
                  setState(() {});
                },
              ),

              Expanded(
                child: Text(
                  answers[0],
                  style: Font.semiBold.style.copyWith(fontSize: 14),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
          Row(
            spacing: 2,
            children: [
              Radio<String>(
                value: answers[1],
                groupValue: answers[1],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: -4
                ),
                onChanged: (String? value) {
                  setState(() {});
                },
              ),

              Expanded(
                child: Text(
                  answers[1],
                  style: Font.semiBold.style.copyWith(fontSize: 14),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
          Row(
            spacing: 2,
            children: [
              Radio<String>(
                value: answers[2],
                groupValue: answers[2],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: -4
                ),
                onChanged: (String? value) {
                  setState(() {});
                },
              ),

              Expanded(
                child: Text(
                  answers[2],
                  style: Font.semiBold.style.copyWith(fontSize: 14),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
          Row(
            spacing: 2,
            children: [
              Radio<String>(
                value: answers[3],
                groupValue: answers[3],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: -4
                ),
                onChanged: (String? value) {
                  setState(() {});
                },
              ),

              Expanded(
                child: Text(
                  answers[3],
                  style: Font.semiBold.style.copyWith(fontSize: 14),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
