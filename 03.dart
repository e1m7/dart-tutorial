/*

  Ключевые слова final, const
  ===========================

  Ранее...

  1) Всем переменным надо указывать тип (или писать var =он будет вычислен).
  2) Переменная это указатель на некий объект (значение переменной это ее свойство).
  3) Только подходящий по типу объект можно положить в переменную.

  Допустим, что нам надо создать 16-ричное число = цвет
  0xAARRGGBB (AA - канал, RR - красный, GG - зеленый, BB - синий)
  0 1 2 3 4 5 6 7 8 9 A  B  C  D  E  F     16-ричная система
  0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15    10-тичная система

  1) final, const = специальные команды, которые не дают изменять значение переменной

    а) const = более строгие правило (при компиляции значение должно быть определено)
    б) final = менее строгое правило (можно делать вычисления при компиляции)


  Пребразования типов
  ===================
  int => double     | toDouble()
  double => int     | round()
  num => string     | toString() / toStringAsFixed()
  string => double  | double.parse() / double.tryParse()
  string => int     | int.parse() = exception / int.tryParse() = null

*/

void main() {

  var i = 1;                 // создали объект типа int, имя i, он указывает на 1
  i = 2;                     // объект i указывает на 2
  print(i);

  var red = 0xFFFF0000;      // красный цвет, int-число 4294901760
  print(red);

  const q1 = 10;
  final q2 = q1 + q1;
  print(q1);
  print(q2);

  // int => double
  var w1 = 10;
  var w2 = w1.toDouble();
  print("w1 (int число) $w1");
  print("w2 (double число) $w2");

  // double => int
  var r1 = 15.6;
  var r2 = r1.round();
  print("r1 (double число) $r1");
  print("r2 (int число) $r2");

  // int => string
  var n1 = 15;
  var n2 = n1.toString();
  print(n1);
  print(n2);

  // double => string
  var m1 = 12.12345678;
  var m2 = m1.toString();
  var m3 = m1.toStringAsFixed(3);
  print(m1);
  print(m2);
  print(m3);

  // string => double
  var t1 = '1.12';
  var t2 = double.parse(t1);
  // var t3 = int.parse(t1);           // Error (исключение), не всегда возможно
  print(t1);
  print(t2);
  // print(t3);

  // конвертировать string => int можно попытаться
  var t3 = int.tryParse(t1);
  print(t3);                           // не вышло, результат = null

}
