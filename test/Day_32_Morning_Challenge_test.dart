import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  Shiritori shiritori= Shiritori();

  test("test case 1", () {
    expect(shiritori.restart(), 'game restarted');
//    expect(shiritori.restart, shiritori.wordsList.isEmpty);
    expect(shiritori.words.isEmpty, true);//in start lst should be empty
    expect(shiritori.play('hello'), true);//hello is not present in the list, so add it to list
    expect(shiritori.words.isEmpty, false); // if the word is not preset in the list and valid then add it to the list, list is no longer empty
    expect(shiritori.play('orange'), true);//as hello is already present in the list, it should now return false
    expect(shiritori.play('elephant'), true);
    expect(shiritori.words.length, 3);
    expect(shiritori.play('lion'), false);// firsOfWord and lastOfPrevWord do not match,
    // game_over should be true now and this function should return false
    expect(shiritori.game_over, true);
    shiritori.restart();
    //----------------
    expect(shiritori.words.isEmpty, true);//in start lst should be empty
    expect(shiritori.play('hello'), true);
    expect(shiritori.game_over, false);
    expect(shiritori.play('hello'), false);//if duplicate word is entered then return false and also game_over should now be true
    expect(shiritori.game_over, true);
    shiritori.restart();
    expect(shiritori.words.isEmpty, true);//after restart words should be empty again
    //---------------
    expect(shiritori.play('orange'), true);

  });

}

