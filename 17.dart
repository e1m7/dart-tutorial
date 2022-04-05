import 'dart:math';

// 1) Аргументом конструктора может быть выражение
// 2) Допустим, что уровень темного храмовника = случайное число 1-100

class Paladin {
  var level;
  var attack;
  var defence;
  
  Paladin.light({this.level, this.attack = 5, this.defence = 5});
  Paladin.dark({this.level}) { this.attack = 15; this.defence = 15; }
  
  @override
  String toString() => "\nPaladin \nlevel=$level \nattack=$attack \ndefence=$defence";
}

class Templars extends Paladin {
  var holy;
  
  Templars.light({ this.holy = 90 }) : super.light(level: 5);
  Templars.dark({ this.holy = 100 }) : super.dark(level: _holyValue());
  
  static int _holyValue() => Random().nextInt(100);
    
  @override
  String toString() => "${super.toString()} \nholy=$holy";
}

void main() {
  Paladin francesko = Templars.dark();
  print(francesko);
}