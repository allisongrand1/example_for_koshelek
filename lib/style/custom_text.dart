import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text; // Текст (единственный обязательный параметр)
  final double fontSize; // Размер текста
  final Color color; // Цвет текста
  final List<Shadow>? shadows; // Тени
  final bool? softWrap; // Разрешен ли перенос на другую строку
  final FontWeight? fontWeight; // Толщина текста
  final String fontFamily; // Стиль текста
  final TextDecoration? decoration; //Добавиление подчеркивания к тексту
  final TextAlign? textAlign; // Выравнивание текста
  final double height; // Отношение блока с текстом от размера текста
  final int? maxLines; // Колво макс. строк
  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize = 16,
      this.color = Colors.black,
      this.fontFamily = "Roboto Regular",
      this.softWrap,
      this.fontWeight,
      this.shadows,
      this.decoration,
      this.textAlign,
      this.height = 1.6, 
      this.maxLines,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        softWrap: softWrap,
        maxLines: maxLines,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            color: color,
            fontWeight: fontWeight,
            shadows: shadows,
            decoration: decoration,
            height: height,
            ));
  }
}


Color light = const Color.fromRGBO(242, 242, 242, 1);
Color grey = const Color.fromRGBO(170, 170, 170,0.95);
Color darkGrey = const Color.fromRGBO(80, 88, 95, 1);
Color lightGrey = const Color.fromRGBO(211,211,211, 0.70);
//Color lightGray = Color.fromRGBO(242,242,242, 0.70);