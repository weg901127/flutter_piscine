# Exercise 04 - Conference

| 제출할 폴더 : | ex04                                                         |
| :------------ | :----------------------------------------------------------- |
| 제출할 파일 : | `ex04/main.dart`, `ex04/model/conference_data_model.dart`<br />`ex04/custom_widget/conference_page.dart`,`ex04/custom_widget/details_page.dart` |
| 참고사항 :    | 없음                                                         |

- 이 과제의 목표는 Route의 전환, 네트워크 통신, 외부 라이브러리 및 다양한 기능을 활용하여 하나의 멋진 기능을 갖는 App을 만들어 보는 것 입니다.

- 프로젝트의 이름은 `conference`여야 합니다.

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

<img  align="center" src="../../.src/day03_ex04_00.gif">  


  - 라이브러리는 다음과 같이 주어집니다
    - [syncfusion_flutter_gauges | Flutter Package](https://pub.dev/packages/syncfusion_flutter_gauges)
    - [intl | Dart Package](https://pub.dev/packages/intl)
    - [url_launcher | Flutter Package](https://pub.dev/packages/url_launcher)
    
- 라이브러리는 Flutter SDK의 버전에 맞추어 사용해야 합니다.

- 통신을 시도하는 URL은 다음과 같이 주어집니다.
  - [data](https://raw.githubusercontent.com/junsuk5/mock_json/main/conferences.json)
  
- App 초기화면에서 네트워크 지연이 발생하는 경우 로딩을 반드시 표시해야 합니다.
  
- class `ConferenceDataModel`을 정의해야 합니다. 이번에는 플러그인과 같은 외부 도움을 통해서 정의해도 됩니다.
  - `ConferenceDataModel`은 http통신의 데이터 결과 값을 관리해야 합니다.
  - `ConferenceDataModel`은 fromJson이라는 Constructor를 통해 데이터 값이 초기화 되어야 합니다.

- 네트워크 통신 Code가 200이 아닌경우 Exception처리를 해야 합니다.

- Route 이동을 위해 호출하는 메서드의 이름은 `_buildEventOntap`여야 합니다.

- 주어진 TimeStamp값을 이용하여 날짜 데이터를 변경 하여야 합니다.

- 외부 링크를 통해 website를 이동하는 경우 반드시 App 내부에서 이동하여야 합니다.

- App의 전체적인 분위기는 반드시 같아야 합니다.

⚡️Keyword
`timestamp`, `url`, `InkWell`, `FutureBuilder`, `snapshot`