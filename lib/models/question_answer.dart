
class QuestionModal{
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionModal({
    required this.question,
    required this.options,
    required this.correctAnswerIndex
  });
}

List<QuestionModal> questions = [
QuestionModal(
question: 'Who is President of Russia?',
correctAnswerIndex: 0,
options: [
  'Vladimir Putin',
  'Joe Biden',
  'Jokowi Dodo',
  'Erdogan',
],
),

QuestionModal(
question: 'Who is President of America?',
correctAnswerIndex: 1,
options: [
'Vladimir Putin',
'Joe Biden',
'Jokowi Dodo',
'Erdogan',
],
),

QuestionModal(
question: 'Who is President of Indonesia?',
correctAnswerIndex: 2,
options: [
'Vladimir Putin',
'Joe Biden',
'Jokowi Dodo',
'Erdogan',
],
),

QuestionModal(
question: 'Who is President of Turkiye?',
correctAnswerIndex: 30,
options: [
'Vladimir Putin',
'Joe Biden',
'Jokowi Dodo',
'Erdogan',
],
)
];
