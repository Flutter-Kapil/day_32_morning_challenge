import 'package:test/test.dart';
import 'main.dart';
void main() {
  Shiritori sOne = Shiritori();
  test('Tests for Shiritori Class', () {
    expect(sOne.play("basic"),true);
    expect(sOne.play("c"),true);
    expect(sOne.play("cpp"),true);
    expect(sOne.play("python"),true);
    expect(sOne.play("nadesico"),false);
    expect(sOne.play("lua"),false);
    expect(sOne.play("assembly"),false);
    sOne.restart();
  });
}



