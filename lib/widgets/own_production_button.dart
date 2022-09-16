import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../controllers/responsiveness.dart';
import '../style/custom_text.dart';

class OwnProductionButton extends StatelessWidget {
  final String linkPicture1;
  final String linkPicture2;
  final String linkPicture3;
  final String linkPicture4;
  final String nameButton;
  const OwnProductionButton(
      {required this.nameButton,
      required this.linkPicture1,
      required this.linkPicture2,
      required this.linkPicture3,
      required this.linkPicture4,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: !ResponsiveWidget.isSmallScreen(context) ? 0.5 : 1,
      child: Padding(
        padding: !ResponsiveWidget.isSmallScreen(context)
            ? const EdgeInsets.symmetric(horizontal: 10)
            : const EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: light, padding: const EdgeInsets.all(25.0)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomText(
                  text: nameButton,
                  fontSize: !ResponsiveWidget.isSmallScreen(context) ? 20 : 16,
                  fontFamily: "Roboto Medium",
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: lightGrey),
                  ),
                   child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: [
                      OwnProductionPicture(linkPicture1),
                      OwnProductionPicture(linkPicture2),
                      OwnProductionPicture(linkPicture3),
                      OwnProductionPicture(linkPicture4),
                    ],
                  ) ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
} //Виджет кнопки "Собственное производство"

class OwnProductionPicture extends StatelessWidget {
  final String link;
  const OwnProductionPicture(this.link, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.7,
      child: Image.network(
        link,
        fit: BoxFit.cover,
      ),
    ); 
  }
}// Виджет картинки кнопки "Собственное производство"