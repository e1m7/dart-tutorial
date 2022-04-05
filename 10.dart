/*
  
  Функции
  =======
  
  1) Функция это именованная часть кода, которую можно вызывать для решения задач
  2) Функция (в Dart) это объект (тип function), она может существовать вне класса
  
    Типы функции
    
      а) int            д) dynamic (может менять тип)
      б) double         е) void (ничего не возвращает)
      в) string         ж) List<int>
      г) bool           ...
      
  3) Определение функции
  
    тип имяФункции(параметры) {
      тело;
    }
    
  4) Если тело функции состоит из одного оператора, то можно использовать =>   
  5) Функция должна называться в формате глаголЧтоДелает(), printUserInfo()
  6) Если не указать тип функции, то он станет dynamic (также и с параметрами)
  7) Возможно добавить не обязательный параметр, его надо обернуть в скобки [String country]
  8) Необязательный параметр может иметь значение по-умолчанию [String country="USA"]
  9) Он может быть только последний в списке параметров
  10) Все необязательные можно закатать в одну скобку [int age, int price]
  11) Параметры функции могут быть именованные, тогда порядок их передачи не важен
  12) Возможна комбинация параметров (обычные, именованные, по-умолчанию, не обязательные)
  13) Именованные параметры помещаются в фигурные скобки {int age = 100}
  
    Параметры
      а) обычные
      б) именованные
      в) по-умолчанию
      г) не обязательные
  
*/

void main () {
  startMessage();
  printUserInfo("Homer Simpson", "Atomic station");
  printUserInfo("Marge Simpson", "Home");
  printUserInfo("Bart Simpson", "School");
  printUserInfo("Apu Nahasapeemapetilon", "Market", "India");
  printUserInfo("William MacDougal", "Garden", "Irish");
  
  printUserStatus(userName: 'Alex', userStatus: 10);
  printUserStatus(userName: 'Marina', userStatus: 9);
  printUserStatus(userName: 'Viktor', userStatus: 8);
  printUserStatus(userName: 'Elena');
  printUserStatus(userName: 'Polina');
  
  printUserStatus(userStatus: 8, userName: "Alexander");
  printUserStatus(userStatus: 9, userName: "Janna");
  printUserStatus();
  finMessage();
} 

void startMessage() {
  print("Start program");
}

void finMessage() => print("Fin program");

void printUserInfo(String user, String work, [String country = "USA"]) {
  print("Person $user work $work of $country");
}

void printUserStatus({String userName = "User", int userStatus = 1}) {
  print("Person $userName status $userStatus");
}
