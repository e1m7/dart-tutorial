/*

  TypeDef
  =======
  
  Вспомним прошлый пример
  
  void main () {                                         // область видимости main
    var numbers = <int>[1,2,3,4,5];                      // numbers (список)
    var removeElement = (int a) => numbers.remove(a);    // removeElement (функция)
    doWork(removeElement);                               // вызов doWork()
    print(numbers);                                      // область видимости main
  }

                   // Вот тут мы используем тип параметра = функция
                   // Вот тут мы используем тип параметра = функция
                   // Вот тут мы используем тип параметра = функция
                   
  void doWork(bool Function(int) myfunc) {               // область видимости doWork
    var result = myfunc(1);                              // result = removeElement <= + область main
    print(result);                                       // вывод result 
  }      
  
  1) Да, мы явно указываем, что эта функция получает int, а возвращает bool
  2) Если эта ситуация повторится в программе много раз, то можно дать ей имя
  
    typedef name = тип название (параметры);
    
  3) Если забыть поставить 1 `var result = myfunc(1);` = ошибка  
  4) Если поставить слишком много параметров или не верно указать тип = ошибка

*/

typedef FunctionRemoveElement = bool Function(int);

void main () {
  var numbers = <int>[1,2,3,4,5];
  var removeElement = (int a) => numbers.remove(a);
  doWork(removeElement);
  print(numbers);
}

void doWork(FunctionRemoveElement myfunc) {
  var result = myfunc(1);
  print(result);
}