import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_flutter/0_presentation/calculator/calculator_page.dart';

List<GetPage> allPages() => [
      GetPage(
        name: "/",
        page: () => CalCulatorPage(),
      ),
    ];
