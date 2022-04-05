/*

  Объектно-ориентированное программирование
  
  1) все свойства создают себе геттеры/сеттеры
  2) контруктор имеет тоже имя, что и класс
  3) для вывода на экран переопределим toString()
  4) для конструктора есть сахар и параметры по-умолчанию
  5) при наследовании конструкторы не наследуются
  6) есть именованные конструкторы (допустим, хотим создать темного паладина)

*/

class Paladin {
  var level;           // null
  var attack;          // null 
  var defence;         // null
  
//   Paladin(var l, var a, var d) {
//     this.level = l;
//     this.attack = a;
//     this.defence = d;
//   }
  
  Paladin({this.level, this.attack = 5, this.defence = 5});
  Paladin.dark({this.level}) {
    this.attack = 15;
    this.defence = 15;
  }
  
  @override
  String toString() => "Paladin level=$level attack=$attack defence=$defence";
  
}

void main() {
  /*
  Paladin ron = Paladin();
  ron.level = 1;
  ron.attack = 10;
  ron.defence = 5;
  print("Paladin level=${ron.level} attack=${ron.attack} defence=${ron.defence}");
  */
  
//   Paladin mike = Paladin(1,5,5);
//   print(mike);
  
  Paladin tom = Paladin(
    level: 1,
    attack: 5,
    defence: 5
  );
  print(tom);
  
  // Паладины по-умолчанию
  
  Paladin p1 = Paladin(level: 1);
  Paladin p2 = Paladin(level: 1);
  Paladin p3 = Paladin(level: 1);
  Paladin gregor = Paladin.dark(level: 1);
  print(p1);
  print(p1);
  print(p1);
  print(gregor);  
  
}