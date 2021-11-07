# Exercise 00 - Hello Collection!

| 제출할 폴더 :   | ex00      |
| :-------------- | :-------- |
| 제출할 파일 :   | main.dart |
| 허용되는 함수 : | 없음      |
| 참고사항 :      | 없음      |

- 이 과제의 목표는 Map자료형을 통해 필요한 데이터를 구분해내고 발견합니다. (마치 천문학자처럼요!)

- 프로젝트의 이름은 `hello_collection`이어야 합니다.

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

- 이번 과제에서 여러분은 다음 규칙을 지키면서 main 함수를 작성할 것입니다.
  - 제공되는 데이터는 변경이 `엄격히 제한` 됩니다.
  - 정렬을 하기 위한 코드는 `오직 한 줄`만 허용됩니다.

```dart
  Map<String, int> SpaceData = {
    'NGC 162': 1862,
    '87 Sylvia': 1866,
    'R 136a1': 1985,
    '28978 Ixion': 2001,
    'NGC 6715': 1778,
    '94400 Hongdaeyong': 2001,
    '6354 Vangelis': 1934,
    'C/2020 F3': 2020,
    'Cartwheel Galaxy': 1941,
    'Sculptor Dwarf Elliptical Galaxy': 1937,
    'Eight-Burst Nebula': 1835,
    'Rhea': 1672,
    'C/1702 H1': 1702,
    'Messier 5': 1702,
    'Messier 50': 1711,
    'Cassiopeia A': 1680,
    'Great Comet of 1680': 1680,
    'Butterfly Cluster': 1654,
    'Triangulum Galaxy': 1654,
    'Comet of 1729': 1729,
    'Omega Nebula': 1745,
    'Eagle Nebula': 1745,
    'Small Sagittarius Star Cloud': 1764,
    'Dumbbell Nebula': 1764,
    '54509 YORP': 2000,
    'Dia': 2000,
    '63145 Choemuseon': 2000,
  };
```

- 다음은 DartPad에서 어떻게 작동해야 하는지 보여줍니다.

------

```dart
//Result
Triangulum Galaxy : 1654
Butterfly Cluster : 1654
Rhea : 1672
Great Comet of 1680 : 1680
Cassiopeia A : 1680
Messier 5 : 1702
C/1702 H1 : 1702
Messier 50 : 1711
Comet of 1729 : 1729
Omega Nebula : 1745
Eagle Nebula : 1745
Small Sagittarius Star Cloud : 1764
Dumbbell Nebula : 1764
NGC 6715 : 1778
Eight-Burst Nebula : 1835
NGC 162 : 1862
87 Sylvia : 1866
6354 Vangelis : 1934
Sculptor Dwarf Elliptical Galaxy : 1937
Cartwheel Galaxy : 1941
R 136a1 : 1985
Dia : 2000
63145 Choemuseon : 2000
54509 YORP : 2000
94400 Hongdaeyong : 2001
28978 Ixion : 2001
C/2020 F3 : 2020
```

⚡️Keyword
`Map`, `List`, `Collection`, `Sort`
