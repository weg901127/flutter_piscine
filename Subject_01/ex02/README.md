# Exercise 02 - Infinity Loop

| 제출할 폴더 : | ex02      |
| :------------ | :-------- |
| 제출할 파일 : | main.dart |
| 참고사항 :    | 없음      |

- 이 과제의 목표는 본격적으로 Flutter Project를 시작하면서 특정한 기능을 가진 Widget을 구현해보고 변경하여 나만의 Widget을 만들어 보는 것입니다.

- 프로젝트의 이름은 `my_widget`이어야 합니다.

- null safety와 lints 적용하지 않으려면 pubspec.yaml의 속성은 다음과 같이 수정을 해야 합니다.

  ```yaml
  environment:
    sdk: ">=2.7.0 <3.0.0"
  
  dev_dependencies:
    flutter_test:
  	#flutter_lints: ^1.0.0
  ```

- Correction

  ```dart
  //그리고 기본적으로 제공되는 코드의 일부분은 다음과 같이 변경되어야 합니다.
  MyApp({Key? key}); -> MyApp({Key key});
  MyHomePage({required this.title}) -> MyHomePage({@required this.title})
  ```

---

- 다음은 Flutter App이 AVD(혹은 Simulator)에서 어떻게 작동해야 하는지를 보여줍니다.
  - 색상은 고려하지 않습니다.

<img src="../../.src/day01_ex02_00.gif">

- 외부라이브러리 `english_words: ^3.1.0` 를 사용하면, 문자열을 뽑아낼 수 있습니다.
- `done`, `do not yet`은 랜덤으로 들어가야 합니다.
- 리스트는 카드 모양을 해야 합니다
- 리스트뷰는 끝 없이 계속 스크롤이 되어야 합니다. 리스트뷰의 끝은 없습니다.
- 데이터의 중복은 이번 서브젝트에서 상관하지 않습니다.
- 다음 문제를 위해 ListView.builder를 권장합니다.

⚡️Keyword
`ListView.Builder`, `ListTile`, `Card`, `Random`

