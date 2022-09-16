
import 'package:example_for_koshelek/main.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'header.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        drawer: DrawerWidget(), // "Бургер меню"
        appBar: HeaderWidget(), // "Шапка" сайта
        body: MainPage()); // Добавление подвала страницы
  }
}
