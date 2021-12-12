import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = new Random();
  var answer = r.nextInt(10);
  print(answer);
  do {
    stdout.write('Please enter your number: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      print("CORRECT");
      break;
    } else
      print("INCORRECT");

  }while(true);

}