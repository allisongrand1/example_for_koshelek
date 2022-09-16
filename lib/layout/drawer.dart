
import 'package:flutter/material.dart';
import '../controllers/main_menu_sections.dart';
import '../style/custom_text.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: lightGrey),
        )),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ), // Поисковик
      Column(
          children: mainMenuSections.entries
              .map((section) => ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  childrenPadding: const EdgeInsets.only(left: 25.0),
                  title: GestureDetector(
                    child: CustomText(text: section.key.name.toUpperCase()),
                    onTap: () {
                     
                    },
                  ),
                  children: section.value
                      .map((subsection) => GestureDetector(
                            child: ListTile(contentPadding: EdgeInsets.zero,
                              title: CustomText(
                                  text: subsection.name, color: darkGrey),
                            ),
                            onTap: () {
                            
                            },
                          ))
                      .toList()))
              .toList()), // Меню с подразделами
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
            size: 30,
          ),
          label: const Text("Войти в систему"),
        ),
      ) // Вход в "Личный кабинет"
    ]));
  }
}
