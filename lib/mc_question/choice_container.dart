import 'package:flutter/material.dart';
import '../models/question_answer.dart';

class ChoiceContainer extends StatelessWidget {
   ChoiceContainer({super.key,
    required this.size,
    required this.color,
     required this.text,

  });

  final Size size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {

    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        child: InkWell(
          onTap: () {
            print(text);
          },
          child: Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.amber.shade300,
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 2,
                  )
                ]
            ),
            height: 50,
            width: 420,
            child: Center(
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    )
          ),
        ),
      ),
    ),
    );
  }
}
