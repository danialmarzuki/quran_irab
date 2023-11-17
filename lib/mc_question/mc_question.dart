import 'package:flutter/material.dart';

import '../models/question_answer.dart';
import 'choice_container.dart';

class MultipleChoiceQuestion extends StatefulWidget {
  const MultipleChoiceQuestion({super.key});

  @override
  State<MultipleChoiceQuestion> createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  @override
  Widget build(BuildContext context) {
    final question = questions[0];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFFFBB7C),
              Color(0xFFFFECB3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.amber.shade900,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.amber.shade900,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.language),
            color: Colors.amber.shade900,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: Colors.amber.shade600,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFFBB7C),
                  Color(0xFFFFECB3),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 300,
            width: size.width,
            child: Container(
              width: 50,
              margin: EdgeInsets.fromLTRB(35, 50, 35, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.amber.shade300,
                ),
              ),
              child: Center(
                child: Text(
                  question.question,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 362,
                width: size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFBB7C),
                      Color(0xFFFFF8E1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    for (var item in question.options)
                      ChoiceContainer(
                        size: size,
                        color: Colors.white,
                        text: item,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: Colors.amber.shade400,
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFC107),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.navigate_before),
              iconSize: 45,
              color: Colors.red,
            ),
            Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.amber.shade300,
                ),
              ),
              child: const Center(
                child: Text("1"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.navigate_next),
              iconSize: 45,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
