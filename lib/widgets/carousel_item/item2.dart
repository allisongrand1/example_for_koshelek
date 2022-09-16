import 'dart:ui';
import 'package:flutter/material.dart';
import '../../controllers/responsiveness.dart';
import '../../style/custom_text.dart';


class Item2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return !ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.9,
                  10
                ],
                    colors: [
                  Colors.white,
                  Color.fromARGB(255, 238, 238, 238)
                ])),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Container(
                              margin: EdgeInsets.only(left: 40, bottom: 60),
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "Шкаф привода передвижения 6-ниточного рольганга",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 42,
                                  height: 1.5,
                                ),
                                softWrap: true,
                                maxLines: 4,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 40, right: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text("Узнать больше"),
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(fontSize: 20),
                                  primary: Colors.grey,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("Заказать сборку"),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  backgroundColor: Colors.black,
                                  primary: Colors.white,
                                  textStyle: TextStyle(fontSize: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.only(left: 24),
                        height: MediaQuery.of(context).size.height,
                        child: Image.network(
                             "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg"))),
              ],
            ))
        : Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 0.7,
                      sigmaY: 0.7,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        /* color: Color(0xFF262D34), */
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: Image.network(
                             "https://phonoteka.org/uploads/posts/2021-06/1624388087_53-phonoteka_org-p-oboi-so-slovami-krasivo-57.jpg",
                          ).image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 16, 16, 0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Шкаф управления блока очистных сооружений и насосных станций",
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      blurRadius: 20.0,
                                      color: Colors.black,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 20.0,
                                      offset: Offset(-10.0, 5.0),
                                    ),
                                  ],
                                  color: Colors.white,
                                  /* fontFamily: 'Montserrat', */
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26,
                                  height: 1.3,
                                ),
                                softWrap: true,
                                maxLines: 4,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          )
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: CustomText(text: "Узнать больше",fontSize: 16,fontFamily: "Roboto Medium",),
                            
                          ),
                          Container(
                            color: Colors.grey,
                            width: 1,
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: 
                            CustomText(text: "Заказать сборку",fontSize: 16,fontFamily: "Roboto Medium",)
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
