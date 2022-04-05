/*

  Переменные и типы
  =================

  1) Основные типы: number, string, boolean
  2) Тип данных Number
  --------------------
    а) num (целые числа, дробные числа)
      б) int (целые числа)
      в) double (дробные числа)

  3) Оператор var = указание компилятору вывести тип переменной
  4) Тип переменной будет выведен из расчета минимального размера
  5) Все значения, которые помещаются в переменные = объекты (свойства объектов)
  6) Все классы выстроены в иерархию, наверху которой находится объект Object
      https://dart.dev/assets/img/number-class-hierarchy.svg

  7) Если создать переменную, но не присваивать ей значение?
    она будет равна null = никакое значение

  8) Тип данных String
  --------------------
    а) строка это последовательность символов utf8
    б) можно использовать 2-ые или 1-ые кавычки
    в) можно выводить значение

  9) Для вставки значений переменных в строку используют интерполяцию \symbol
  10) Тип данных Boolean
  ----------------------
    1) = true
    2) = false
    3) = null

  11) В Dart нельзя изменить тип переменной, если он был определен
  12) Есть ключевое слово dynamic, которое позволяет менять тип
    а) мы не знаем тип переменной на момент создания
    б) не рекомендуется к (частому) использованию

  13) Соглашения по именам
    1) имя переменной = a-zA-Z0-9_
    2) имя переменной с маленькой буквы
    3) имя функции в два слово, первое глагол
    4) имя класса с большой буквы
    5) Camel-стиль именования

*/

void main() {

  num a1 = 1;              // целое
  num a2 = 1.5;            // дробное
  print(a1);
  print(a2);

  int b1 = 10;             // целое
  int b2 = 123;            // целое
  print(b1);
  print(b2);

  double c1 = 10.5;        // дробное 
  double c2 = -1.99;       // дробное
  double c3 = 10;          // дробное
  print(c1);
  print(c2);
  print(c3);

  var d = 100;             // int
  var e = -15.45;          // double
  print(d); 
  print(e);
  print(d is int);         // d имеет тип int = true
  print(e is double);      // e имеет тип double = true

  print(a1.runtimeType);   // a1 = 1, тип = int (нет никакого num)
  print(a2.runtimeType);   // заполните самостоятельно
  print(b1.runtimeType);   // заполните самостоятельно
  print(b2.runtimeType);   // заполните самостоятельно
  print(c1.runtimeType);   // заполните самостоятельно
  print(c2.runtimeType);   // заполните самостоятельно
  print(c3.runtimeType);   // заполните самостоятельно
  print(d.runtimeType);    // заполните самостоятельно
  print(e.runtimeType);    // заполните самостоятельно

  var a3;                  // определили, но ничего не присвоили
  print(a3);               // null (пустое значение, ничего)

  String name1 = "Bart Simpson";
  String name2 = 'Lisa Simpson';
  var name3 = "Homer Simpson";
  print(name1);
  print(name2);
  print(name3);

  var name4 = 'O"Brain';
  var name5 = 'O\'Brain';
  print(name4);
  print(name5);

  var name6 = "Alexey" "Marina" "Vladimir";
  var name7 = "Alexey\n" "Marina\n" "Vladimir\n";
  print(name6);
  print(name7);

  var name9 = """
    М.Ю.Лермонтов

    Белеет парус одинокий,
    В тумане моря голубом
    Что ищет он в краю далеком?
    Что кинул он в краю родном?

                        1832 г.
  """;
  print(name9);

  var a = 10;
  var b = 20;
  print("Переменная a = $a");
  print("Переменная b = $b");
  print("Сумма $a + $b = ${ a + b }");

  var q1 = true;
  var q2 = 10 > 1;
  var q3 = 10 < 1;
  print(q1);
  print(q2);
  print(q3);

  var q4;
  print(q4);

  var z1 = 10.5;
  // z1 = true;

  dynamic z2 = 10.5;
  print(z2);
  z2 = "Hello World";
  print(z2);
  z2 = false;
  print(z2);

}