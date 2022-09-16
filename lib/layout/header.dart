
import 'package:flutter/material.dart';
import '../controllers/responsiveness.dart';
import '../style/custom_text.dart';
import 'header_menu.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2, // Тень шапки
      shadowColor: lightGrey, //Цвет тени
      automaticallyImplyLeading: !ResponsiveWidget.isSmallScreen(context)
          ? false
          : true, // Параметр для отображения кнопки "Бургер-меню"
      title: InkWell(
          onTap: () {
          
          },
          child: Text('Логотип')), // Эмблема компании
      actions: !ResponsiveWidget.isSmallScreen(context)
          ? [
              const HeaderMenuWidget(), //Пункты меню
               Container(
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                      color: Colors.white,
                      highlightColor: Colors.grey.withOpacity(.7),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      child: Text("Интернет-магазин",
                          style: TextStyle(fontSize: 19)),
                      onPressed: () {}),
                ), //Кнопка "Интернет-магазин"
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black.withOpacity(.7)),
                splashRadius: 18,
              ), //Кнопка "Поиск"
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.black.withOpacity(.7)),
                splashRadius: 18,
              ), //Кнопка "Корзина"
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outline, color: Colors.black.withOpacity(.7)),
                splashRadius: 18,
              ) //Кнопка "Личный кабинет"
            ]
          : [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
                padding: const EdgeInsets.symmetric(horizontal: 17),
              ), //Кнопка "Корзина"
            ],
    );
  }
}
