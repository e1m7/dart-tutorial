/*
  Иерархия классов
  
    Paladin
      1) Paladin.light
          attack=5 
          defence=5

      2) Paladin.dark
          attack=15
          defence=15
      
    Templars extends Paladin
      1) Templars.ligth
          level=5 
          attack=5 
          defence=5 
          holy=90

      2) Templars.dark
          level=10 
          attack=15 
          defence=15 
          holy=100
*/

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
  Templars.dark({ this.holy = 100 }) : super.dark(level: 10);
  
  @override
  String toString() => "${super.toString()} \nholy=$holy";
}

void main() {
  Paladin tom = Templars.light();
  print(tom);
  Paladin francesko = Templars.dark();
  print(francesko);
}