/*

  Циклы
  =====
  
    1) цикл это блок кода, который выполняется несколько раз (1 раз = итерация)
      а) итерации от условия
      б) итерации от числа
      
    2) цикл for ... in (создается переменная, которая пробегает по списку)

      for (var элемент in список) {
        тело цикла;
      }
    
    3) цикл forEach (перебирает все элементы списка)

      list.forEach( (условие) {
        тело цикла;
      } );
      
    4) цикл for (стандартный) for (;;}
    
      for (var переменная; условие продолжения: действие после итерации) {
        тело цикла;
      }

    5) цикл while ... do (условие, потом выполнение)
    6) цикл do ... while (выполнение, потом условие)
    7) ключевое слово break = прекращает работу оператора
    8) ключевое слово countinue = прекращает работу итерации (не цикла!)

*/ 

void main() {
  var numbers = <int>[1,2,3,4,5,6,7,8];
  
  for (var number in numbers) {
    var square = number * number;
    print("Очередной элемент $number, его квадрат равен $square");
  }
  
  numbers.forEach( (el) {
    var sq = el * el * el;
    print("Элемент $el, его куб $sq");
  });
  
  for (var i = 0; i < numbers.length; i++) {
    var el = numbers[i];
    print("Индекс = $i, значение = $el");
  }
  
  var count = 0;
  while (count <= 3) {
    var el = numbers[count];
    print("Перебираем в while элемент $el (индекс $count)");
    count++;
  }
  
  count = 0;
  do {
    var el = numbers[count];
    print("Перебираем через do $el (индекс $count)");
    count++;
  } while (count <=3);
  
  // Задача: сколько нечетных чисел от 1 до 200 надо взять, чтобы получить сумму > 100
  // Задача: какие это будет числа?
  
  var answer = 0;
  var summa = 0;
  for (int i = 1; i < 200; i++) {
    if (i.isEven) {
      continue;                  // окончить итерацию
    } else {
      answer++;
      summa += i;
      print("Шаг $answer, число $i, сумма $summa");
    }
    if (summa > 100) {
      break;                     // выйти из цикла
    }
  }
  print("Надо взять $answer чисел");
  
}