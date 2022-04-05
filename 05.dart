/*
  
  Работа с датой и временем
  =========================
  
  1) Есть специальный класс для времени DateTime
  2) Для создание нового объекта не надо писать new
  
    var dt1 = new DateTime();       // так правильно
    var dt1 = DateTime();           // так тоже правильно
    
  3) Для создание нового объекта надо указать как минимум год
  
    а) год
    б) месяц
    в) день
    г) час
    д) минуты
    е) секунды 
    ж) миллисекунды
    
  4) Можно сделать переменную типа DateTime() текущего времени .now()
  5) Можно создать переменную из строки определенного формата .parse()
  6) Из полученного (сформированного) объекта DateTime можно брать куски
  7) Моменты времени можно сравнивать, находить разницу и проч.
     1 = больше
    -1 = меньше
     0 = равны
     
  8) К объектам DateTime можно прибавлять числа (к разным кускам)
  9) Методом Duration() нельзя изменить self объект, надо делать новый

*/

void main() {
  var dt1 = DateTime(2022);
  var dt2 = DateTime(2022, 9, 1, 10, 11, 12, 333);
  var dt3 = DateTime.now();
  print(dt1);
  print(dt2);
  print(dt3);
  
  var dt4 = DateTime.parse('2021-12-24 23:55:55.000');
  print(dt4);
  
  print("");
  print(dt3.year);
  print(dt3.month);
  print(dt3.day);
  
  var moment1 = DateTime.parse('2021-12-24 23:55:45');
  var moment2 = DateTime.parse('2021-12-24 23:55:40');
  print("Момент1 был раньше момента2: ${ moment1.isAfter(moment2) }");
  print("Момент2 был раньше момента1: ${ moment2.isAfter(moment1) }");
  print("Разница между моментами равна: ${ moment1.difference(moment2) }");
  print("Момент1 > момент2: ${ moment1.compareTo(moment2) }");
  
  print("");
  var moment3 = DateTime.parse('2020-10-10 10:10:10');
  print(moment3);
  var moment4 = moment3.add(Duration(seconds: 5));
  print(moment4);

}