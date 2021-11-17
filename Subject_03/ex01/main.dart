class Person {
  String id;
  int tokenNum = 42;

  Person({this.id});
}

class TokenMachine {
  List<int> tokenList = [10, 22, 31, 42];

  void procData(Person p) {
    accessData(p);
    int data = fetchData(p);
    showData(p, data);
  }

  void accessData(Person p) {
    print('${p.id}님의 반갑습니다.');
  }

  int fetchData(Person p) {
    int retData;
    print('${p.id}님의 토큰 번호를 확인하고 있습니다.');
    Future.delayed(Duration(seconds: 4)).then((_) {
      retData = p.tokenNum;
    });
    return retData;
  }

  void showData(Person p, int token) {
    if (tokenList.any((e) => e == token)) {
      print('${p.id}님의 토큰(${token}) 유효합니다.');
    } else {
      print('${p.id}님의 토큰(${token}) 유효하지 않습니다.');
    }
  }
}

void main() {
  Person p1 = Person(id: 'flutter');
  TokenMachine machine = TokenMachine();
  machine.procData(p1);

  return;
}
