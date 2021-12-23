
import 'dart:io';
import 'dart:math';

import 'game.dart';

void main() {
  const maxRandom = 100;
  var game=Game();
  var isCorrect= false;
  var check= false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var number = stdin.readLineSync();
    var guess = int.tryParse(number!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    var sum=game.sum;
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $sum');
      print('╟────────────────────────────────────────');

      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      isCorrect = false;
      check=false;
      do {
        stdout.write('Play again(Y/N):');
        var str = stdin.readLineSync();

        if (str == "Y" || str == "y") {
          isCorrect = false;
          check=true;
          print('╔════════════════════════════════════════');
          print('║            GUESS THE NUMBER            ');
          print('╟────────────────────────────────────────');
        } else if (str == "N" || str == "n") {
          isCorrect = true;
          check=true;
        }
      } while (!check);
    }

  }while (!isCorrect);



}
