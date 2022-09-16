import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controllers/responsiveness.dart';
import 'carousel_item/item1.dart';
import 'carousel_item/item2.dart';

int _currentIndex = 0;
List cardList = [Item1(), Item2(),];

class CarouselChangeReasonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonDemoState();
  }
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  final List<Widget> imageSliders = cardList.map((card) {
    return Builder(builder: (BuildContext context) {
      return Container(
        height:
            MediaQuery.of(context).size.height - AppBar().preferredSize.height,
        //width: MediaQuery.of(context).size.width,
        child: Card(
          child: card,
        ),
      );
    });
  }).toList();

  String reason = '';
  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return /* Column(children: [ */
        !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    TextButton(
                        onPressed: () => _controller.previousPage(),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 50,
                          color: Colors.grey,
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size(
                            90,
                            ResponsiveWidget.isLargeScreen(context) ? 800 : 410,
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.05),
                        )),
                  ]),
                  Expanded(
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        onPageChanged: onPageChange,
                        autoPlay: false,
                      ),
                      carouselController: _controller,
                    ),
                  ),
                  Column(children: <Widget>[
                    TextButton(
                        onPressed: () => _controller.nextPage(),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          size: 50,
                          color: Colors.grey,
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size(
                            90,
                            ResponsiveWidget.isLargeScreen(context) ? 800 : 410,
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.05),
                        )),
                  ])
                ],
              )
            : Column(
                children: [
                  Container(
                    height: 400,
                    child: Row(
                      children: [
                        Expanded(
                          child: CarouselSlider(
                            items: imageSliders,
                            options: CarouselOptions(
                              viewportFraction: 1,
                              enlargeCenterPage: true,
                              aspectRatio: 1,
                              onPageChanged: onPageChange,
                              autoPlay: false,
                            ),
                            carouselController: _controller,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: cardList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(_currentIndex == entry.key
                                          ? 0.9
                                          : 0.4)),
                            ),
                          );
                        }).toList(),
                      ))
                ],
              );
  }
}