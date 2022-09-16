import 'package:example_for_koshelek/controllers/responsiveness.dart';
import 'package:example_for_koshelek/style/custom_text.dart';
import 'package:example_for_koshelek/widgets/main_button.dart';
import 'package:example_for_koshelek/widgets/own_production_button.dart';
import 'package:flutter/material.dart';

import 'layout/body_widget.dart';
import 'layout/layout.dart';
import 'widgets/carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: LayoutWidget(),
      debugShowCheckedModeBanner: false,
      title: 'Technopark',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        hoverColor: Colors.transparent,
        fontFamily: "Roboto Regular",
        textTheme: const TextTheme(bodyText2: TextStyle(fontSize: 15)),
        scaffoldBackgroundColor: Colors.white,
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 3,
            onPrimary: Colors.white,
            primary: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BodyWidget(
      bodySlivers: [
        SliverToBoxAdapter(child: CarouselChangeReasonDemo()), // Слайдер
        SliverToBoxAdapter(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          child: CustomText(
            text: 'Для наших клиентов',
            fontSize: !ResponsiveWidget.isSmallScreen(context) ? 24 : 19,
            fontFamily: "Roboto Medium",
          ),
        )), // Заголовок "Для наших клиентов"
        SliverPadding(
          padding: ResponsiveWidget.isLargeScreen(context)
              ? const EdgeInsets.symmetric(horizontal: 150, vertical: 5)
              : ResponsiveWidget.isMediumScreen(context)
                  ? const EdgeInsets.symmetric(horizontal: 100, vertical: 5)
                  : const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          sliver: SliverGrid.count(
              mainAxisSpacing:
                  !ResponsiveWidget.isSmallScreen(context) ? 24 : 14,
              crossAxisSpacing:
                  !ResponsiveWidget.isSmallScreen(context) ? 24 : 14,
              childAspectRatio: ResponsiveWidget.isSmallScreen(context)
                  ? 1
                  : 1.4, // Отношение длинны кнопки к высоте
              crossAxisCount: ResponsiveWidget.isLargeScreen(context)
                  ? 3
                  : 2, // Количество кнопок по горизонтали
              children: const [
                MainMenuButton(
                    name: "Каталоги",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                MainMenuButton(
                    name: "Прайс-лист",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                MainMenuButton(
                    name: "Интернет магазин",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                MainMenuButton(
                    name: "Акции",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                MainMenuButton(
                    name: "Новинки",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                MainMenuButton(
                    name: "Сборка шкафов",
                    link:
                         "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
              ]),
        ), // Главное меню
        SliverPadding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? const EdgeInsets.only(left: 15, right: 15, bottom: 30)
              : const EdgeInsets.only(left: 100, right: 100, bottom: 30),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: CustomText(
                      text: 'Контрактная сборка шкафов',
                      fontSize:
                          !ResponsiveWidget.isSmallScreen(context) ? 24 : 19,
                      fontFamily: "Roboto Medium"),
                ),
                if (!ResponsiveWidget.isSmallScreen(context))
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: CustomText(
                      text:
                          'У нас есть две производственные базы, в России и в Австрии, благодаря чему мы имеем выверенную логистику и быструю доставку компонентов в любую точку мира. Размещая у нас свой заказ, вы получите продукцию, соответствующую международным стандартам и нормам.',
                      fontSize: 18,
                      textAlign: TextAlign.justify,
                      height: 2,
                    ),
                  ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: const [
                    OwnProductionButton(
                        nameButton: "Собственное производство в России",
                        linkPicture1:
                           "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture2:
                            "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture3:
                            "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture4:
                             "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                    OwnProductionButton(
                        nameButton: "Собственное производство в Авcтрии",
                        linkPicture1:
                            "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture2:
                             "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture3:
                            "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                        linkPicture4:
                            "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"),
                  ],
                )
              ],
            ),
          ),
        ) // Контрактная сборка шкафов
      ],
      availabilityFotter: true,
    );
  }
}

