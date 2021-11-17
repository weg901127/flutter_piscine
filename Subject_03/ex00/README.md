# Exercise 00 - Limitless

| 제출할 폴더 : | ex00                                                   |
| :------------ | :----------------------------------------------------- |
| 제출할 파일 : | `ex00/main.dart`, `ex00/custom_widget/movie_page.dart` |
| 참고사항 :    | 없음                                                   |

- 이 과제의 목표는 주어진 이미지를 활용하여 App내에서 Widget을 통해 표현해보는 경험을 해 보는 것입니다. 물론 멋진 폰트까지 포함해서 말이죠!

- 프로젝트의 이름은 `limitless`여야 합니다.

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

<img  align="center" src="../../.src/day03_ex00_00.gif">  


  - 영화 정보 데이터는 다음과 같이 주어집니다.

```dart
List<Map<String, String>> movieData = [
{'posterPath' : '<https://image.tmdb.org/t/p/w500/1Lh9LER4xRQ3INFFi2dfS2hpRwv.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/oF80bdLeRri6PFm0yAT0gRNQoDG.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/8SAWREjfLyArr2pYo1gHihCthY8.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/1UkbPQspPbq1FPbFP4VV1ELCfSN.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/aNtAP8ZzUMdnCPoqYgVOcgI0Eh4.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/yXNVcG0C7Oymg9F9ecXa9MWVwj8.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/68ZwnPALUeweaFdT1z75oXJ4Xie.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/l8HyObVj8fPrzacAPtGWWLDhcfh.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/bZrStEjqKMRCywomPZiPkOWZpXL.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/qfB6QNaCtmGDy9ujvBOUs7UaPx.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/eRLlrhbdYE7XN6VtcZKy6o2BsOw.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/52SgH0kLiSpWdJDOZvhAyy34uhe.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/yjdOpEtlzlAnw4Kw0NGw25VrbIb.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/xs7Dx72wr2H14uxu0H0R9ljDZk7.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/zPDY58lk0YIxr9qsnGV64PEnjkI.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/pMyOSRURkxF6YId9vOTGsBH1jRb.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/jlmuSzTXOppShgYZbeetWTFTi6P.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/xJY3ttefDnnn6doYQo5QOROgdvV.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/w7PJ7fBEYOuaAMKfYa4zmw45v3N.jpg>'},
{'posterPath' : '<https://image.tmdb.org/t/p/w500/AviYDX3NuuyVQdZoLmLxNKp3zm8.jpg>'},
];
```

- 이미지 자체에 스크롤 기능이 들어가서는 안됩니다.

- 폰트는 자유롭게 사용할 수 있지만 다음을 참조해도 됩니다.

  [Google Fonts](https://fonts.google.com/specimen/Fruktur#standard-styles)

- App의 전체적인 분위기는 반드시 같아야 합니다.

⚡️Keyword
`pubspec.yaml`, `font`, `GridView`