import 'package:flutter/material.dart';

import '../controllers/main_menu_sections.dart';
import '../controllers/responsiveness.dart';
import '../style/custom_icon.dart';
import '../style/custom_text.dart';

class FooterCustomText extends StatelessWidget {
  final String text;
  const FooterCustomText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(text: text, fontSize: 13, color: Colors.white);
  }
} // Значения параметров CustomText для текста Footer

class FotterWidget extends StatelessWidget {
  const FotterWidget({Key? key}) : super(key: key);

  static final List<Widget> _iconsJoinUs = [
    IconButton(
        icon: const Icon(
          CustomIcon.instagram,
          color: Colors.white,
        ),
        onPressed: () {
        }),
    IconButton(
        icon: const Icon(
          CustomIcon.youtube,
          color: Colors.white,
        ),
        onPressed: () {
        })
  ]; // Виджеты иконок соцсетей и тд и тп

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: grey),
          ),
        ),
        child: Column(
          children: [
            if (!ResponsiveWidget.isSmallScreen(context)) const FooterMenu(),
            Container(
                padding: !ResponsiveWidget.isSmallScreen(context)
                    ? const EdgeInsets.symmetric(vertical: 7, horizontal: 20)
                    : const EdgeInsets.symmetric(vertical: 15),
                color: darkGrey,
                child: !ResponsiveWidget.isSmallScreen(context)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const FooterCustomText(
                              "© Технопарк-Автоматизация 2022"),
                          const FooterCustomText("Тел.: 8 (800) 234-52-70"),
                          const FooterCustomText("e-mail: info@electropark.ru"),
                          Row(
                            children: <Widget>[
                                  const FooterCustomText(
                                      "Присоединяйтесь к нам:")
                                ] +
                                _iconsJoinUs,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const FooterCustomText("Присоединяйтесь к нам:"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _iconsJoinUs,
                          ),
                          const FooterCustomText(
                              "© Технопарк-Автоматизация 2022")
                        ],
                      ))
          ],
        ));
  }
} // Виджет подвала сайта

class FooterMenu extends StatelessWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 250),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: mainMenuSections.entries
                .map((section) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                            
                            },
                            child: CustomText(
                                text: section.key.name.toUpperCase(),
                                fontFamily: "Roboto Bold",
                                decoration: TextDecoration.underline),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: section.value
                                  .map((subsection) => TextButton(
                                        onPressed: () {
                                          
                                          
                                        },
                                        child: CustomText(
                                            fontSize: 15,
                                            text: subsection.name,
                                            fontFamily: "Roboto Thin",
                                            fontWeight: FontWeight.w600),
                                      ))
                                  .toList())
                        ]))
                .toList()));
  }
} // Виджет меню подвала сайта
