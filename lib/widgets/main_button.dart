import 'package:flutter/material.dart';

import '../controllers/responsiveness.dart';
import '../style/custom_text.dart';

class MainMenuButton extends StatelessWidget {
  final String name;
  final String link;
  const MainMenuButton({required this.name, required this.link, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, top: 20),
        child: Column(
          children: [
            Expanded(child: Image.network(link)),
            Center(
              child: CustomText(
                  text: name,
                  fontSize: !ResponsiveWidget.isSmallScreen(context) ? 18 : 14,
                  fontFamily: "Roboto Medium"),
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
} // Кнопка главного меню