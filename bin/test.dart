import 'package:test/test.dart';
import 'package:test/test.dart';
import 'package:test/test.dart' as prefix0;
import 'main.dart';
void main() {
  Shiritori sOne = Shiritori();
  test('Tests for Shiritori Class', () {
    expect(sOne.game_over, false)
    expect(sOne.play("basic"),true);
    expect(sOne.play("c"),true);
    expect(sOne.play("cpp"),true);
    expect(sOne.play("python"),true);
    expect(sOne.play("cpp"),false); //duplicate entry
    expect(sOne.game_over, true);
    sOne.restart();
    expect(sOne.game_over, false);
    prefix0.expect(sOne.words, []);
    expect(sOne.play('hal'), true);
    expect(sOne.play("lua"),true);
    expect(sOne.play("assembly"),true);
    expect(sOne.play("java"),false); //last character of assembly and first character of java don't match.

    expect(sOne.restart(), "game restarted");
  });
}


