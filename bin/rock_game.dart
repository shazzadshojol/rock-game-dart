import 'dart:html';
import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  while (true) {
    stdout.write('welcome to r, p, s or q to stop');
    final userinput = stdin.readLineSync();

    var playerMove;

    if (userinput == 'r') {
      playerMove = Move.rock;
    } else if (userinput == 'p') {
      playerMove = Move.paper;
    } else if (userinput == 's') {
      playerMove = Move.scissors;
    } else if (userinput == 'q') {
      break;
    } else {
      print('Invalid input');
    }

    final randomnumber = Random().nextInt(3);
    final aiMove = Move.values[randomnumber];

    print('You played: $playerMove');
    print('ai played: $aiMove');

    if (playerMove == Move.rock && aiMove == Move.scissors ||
        playerMove == Move.paper && aiMove == Move.rock ||
        playerMove == Move.scissors && aiMove == Move.paper) {
      print('You win!');
    } else if (playerMove == aiMove) {
      print('Tie');
    } else {
      print('You lost');
    }
  }
}
