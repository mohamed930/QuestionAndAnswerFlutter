import 'package:flutter/material.dart';
import 'package:question_and_answer/Compoents/AnswerComponets.dart';
import 'package:question_and_answer/Compoents/AppBarComponets.dart';
import 'package:question_and_answer/Compoents/MainButtonComponets.dart';
import 'package:question_and_answer/Compoents/QuestionComponents.dart';
import 'package:question_and_answer/Customs%20+%20Extensions/Font.dart';

class Questionsscreen extends StatefulWidget {
  const Questionsscreen({super.key});

  @override
  State<Questionsscreen> createState() => _QuestionsscreenState();
}

class _QuestionsscreenState extends State<Questionsscreen> {
  String? selectedAnswer;
  bool? isCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarcomponets(
        title: "Questions and aswers",
        backGroundColor: Theme.of(context).colorScheme.primary,
        fontColor: Colors.white,
        isCenter: false,
      ),
      body: Container(
        width: .infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            Questioncomponents(title: "Which isn't correct about array?"),

            AnswerComponet(
              answers: [
                "An array can store multiple values in a single variable.",
                "Array elements are accessed using an index.",
                "The first element of an array has an index of 1.",
                "An array can contain duplicate values.",
              ],
            ),

            Mainbuttoncomponets(answer: selectedAnswer),

            if (isCorrect == false)
              Row(
                spacing: 3,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Correct Answer: ",
                    style: Font.bold.style.copyWith(fontSize: 14),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        "C. The first element of an array has an index of 1.",
                        softWrap: true,
                        style: Font.medium.style.copyWith(
                          fontSize: 14,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

          ],
        ),
      ),
    );
  }
}
