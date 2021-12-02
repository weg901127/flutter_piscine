import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_flutter/0_presentation/core/pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
        primaryColor: Colors.red.shade400,
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: Colors.red.shade400,
        ),
      ),
      debugShowCheckedModeBanner: false,
      getPages: allPages(),
    );
  }
}
