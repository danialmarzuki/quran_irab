import 'package:flutter/material.dart';

 class AnswerChoice extends StatefulWidget {
  const AnswerChoice({
    super.key,

    required this.question,
    required this.isSelected,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
    required this.currentIndex,

  });

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(

        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),

        child:
        Container(
          height: 70,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 2,
                  color: isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                      ? Colors.red
                      : Colors.white,
              ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),

            ],
          ),
        )
    );
  }

  // ListView.builder(
  // shrinkWrap : true,
  // itemCount: question.options.length,
  // itemBuilder: (context, int index) {
  // return GestureDetector(
  // child: AnswerChoice(
  // currentIndex : index,
  // question: question.options[index],
  // isSelected: selectedAnswerIndex == index,
  // correctAnswerIndex: question.correctAnswerIndex,
  // selectedAnswerIndex: selectedAnswerIndex,
  // ),
  // );
  // },
  // )

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
