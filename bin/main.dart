// Challenge
// Shiritori Game
// This challenge is an English twist on the Japanese word game Shiritori.
// The basic premise is to follow two rules:
//
// 1. First character of next word must match last character of previous word.
// 2. The word must not have already been said.

// Write a Shiritori class that has two instance properties:
// - words: a list of words already said.
// - game_over: a boolean that is true if the game is over.
//  and two instance methods:
//
// - play: a method that takes in a word as an argument and checks if it is valid
// (the word should follow rules #1 and #2 above).
// - restart: a method that sets the words list to an empty one [] and sets the
// game_over boolean to false. It should return "game restarted".

import 'dart:io';

class Shiritori{
  List<String> words=[];
  bool game_over=true;

  bool play(String word){
    return !words.contains(word);
  }

  String restart(List<String> words){
    words.clear();
    game_over=false;
    return 'game restarted';
  }
}

main() {
  Shiritori shiritori= Shiritori();
  print('Game begins');
  while(shiritori.game_over){
    stdout.write("Enter a word");
    var userInput = stdin.readLineSync();
    if(shiritori.play(userInput)){
      shiritori.words.add(userInput);
    }else{
      shiritori.restart(shiritori.words);
    }
  }


}


