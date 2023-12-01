import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

class ChoiceContainer extends StatelessWidget {
  ChoiceContainer({
    super.key,
    required this.size,
    required this.color,
    required this.text,
    required this.isCorrect,
  });

  final Size size;
  final Color color;
  final String text;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        child: InkWell(
          onTap: () {
            if (isCorrect) {
              CoolAlert.show(
                context: context,
                type: CoolAlertType.success,
                title: 'Correct',
                text: 'Good Job!',
                autoCloseDuration: const Duration(seconds: 2),
              );
            } else {
              CoolAlert.show(
                context: context,
                type: CoolAlertType.error,
                title: 'Oops...',
                text: 'Wrong answer. Try again',
                loopAnimation: false,
              );
            }
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
                ]),
            height: 50,
            width: 420,
            child: Center(
                child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}
