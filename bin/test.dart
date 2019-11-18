import 'main.dart';
import 'package:test/test.dart';

void main(){
  Shiritori S = Shiritori();
  S.words = ['basic',
    "c",
    'cpp',
    'php',
    'python',
    'nadesico',
    'ocaml',
    'lua',
    'assembly'];

  test("Test Case for Shiritori,play", (){
    expect(S.play('cpp'), true);
  });

  test("Test Case for Shiritori.restart", (){
    expect(S.restart(['basic',
      "c",
      'cpp',
      'php',
      'python',
      'nadesico',
      'ocaml',
      'lua',
      'assembly']), "game restarted");
  });
}