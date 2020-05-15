import 'questions.dart';

class QuizBrain {
  int _questionNum = 0; // start quiz at question 0

  List<Question> _questionKey = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNum < _questionKey.length - 1) {
      //if we have not reached final question
      _questionNum++; //method to send to next question
    }
  }

  String getQuestionText() {
    return _questionKey[_questionNum].questionText; // retrieve question
  }

  bool getQuestionAnswer() {
    return _questionKey[_questionNum].questionAnswer; // retrieve answer
  }

  bool isFinished() {
    if (_questionNum >= _questionKey.length - 1) {
      //if we have reached the final question
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  } // reset the quiz to question 1

}
