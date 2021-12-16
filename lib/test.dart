import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = new Random();
  var answer = r.nextInt(10);
  var guess;
  var count = 0 ;
  print(answer);
  print(answer);
  print("╔═════════════════════════════════════════");
  print("║            GUESS THE NUMBER");
  print("╟─────────────────────────────────────────");
  do {
    stdout.write('Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      print("error");
    }else{
      if(guess != answer){
        if(guess > answer){
          print("║ ➜ "+input + " is TOO HIGH! ▲ ");
          print("╟─────────────────────────────────────────");
        }
        if(guess < answer){
          print("║ ➜ "+input + " is TOO LOW! ▼  ");
          print("╟─────────────────────────────────────────");
        }
        print("Please Try again");
        count++;
      }else{
        count++;
        print("║ ➜ "+" CORRECT ❤,total guesses: " + count.toString());
        print("╟─────────────────────────────────────────");
        print("║              THE END");
        print("╚═════════════════════════════════════════");
        break;
      }
    }
  }while(true);

}