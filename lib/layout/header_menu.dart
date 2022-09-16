
import 'package:flutter/material.dart';
import '../controllers/main_menu_sections.dart';
import '../style/custom_text.dart';
import '/model/button.dart';

class HeaderMenuWidget extends StatefulWidget {
  const HeaderMenuWidget({Key? key}) : super(key: key);
  @override
  State<HeaderMenuWidget> createState() => _HeaderMenuWidgetState();
}

class _HeaderMenuWidgetState extends State<HeaderMenuWidget> {
  static late Map<Button, FocusNode> focusN;
  static late FocusNode focusbraus;

  @override
  void initState() {
    super.initState();
    mainMenuSections
        .removeWhere((key, value) => key.name == "Интернет-магазин");
    focusN = {for (var item in mainMenuSections.keys) item: FocusNode()};
    focusN.forEach((key, item) {
      item.addListener(() {
        if (item.hasFocus) {
          _showOverlay(context, key);
        } else {
          removeOverlay();
        }
      });
    });
  }

  OverlayState? overlayState;
  OverlayEntry? overlayEntry;

  void _showOverlay(BuildContext context, Button key) async {
    overlayState = Overlay.of(context)!;

    overlayEntry = OverlayEntry(
        //maintainState: true,
        builder: (context) {
      return Positioned(
        top: AppBar().preferredSize.height,
        child: MouseRegion(
          onHover: (val) {
            focusN.forEach((key, item) {
              item.unfocus();
            });
            focusN[key]!.requestFocus();
          },
          child: headerMenuItem(context, key, mainMenuSections[key]),
        ),
      );
    });

    overlayState!.insertAll([overlayEntry!]);
  }

  void removeOverlay() {
    overlayEntry!.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: mainMenuSections.keys
            .map((item) => SizedBox(
                height: AppBar().preferredSize.height,
                child: MouseRegion(
                  onHover: (val) {
                    focusN[item]!.requestFocus();
                  },
                  onExit: (val) {
                    focusN[item]!.unfocus();
                  },
                  child: TextButton(
                    focusNode: focusN[item],
                    onPressed: () {
                    
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: CustomText(
                            text: item.name.toUpperCase(),
                            fontSize: 15, // высота шрифта 26
                            color: Colors.grey, // черный цвет фона текста
                            fontFamily: "Roboto Regular",
                            fontWeight: FontWeight.w100)),
                  ),
                )))
            .toList());
  }
}

MouseRegion headerMenuItem(
        BuildContext context, Button key, List<Button>? subsections) =>
    MouseRegion(
      onExit: (val) {
        _HeaderMenuWidgetState.focusN[key]!.unfocus();
      },
      child: Container(
        height: AppBar().preferredSize.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: light,
          border: Border(
            top: BorderSide(width: 1, color: lightGrey),
            bottom: BorderSide(width: 1, color: lightGrey),
          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: subsections!
                .map((item) => SizedBox(
                      height: AppBar().preferredSize.height,
                      child: TextButton(
                        onPressed: () {
                         
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(left: 22, right: 22),
                            child: Text(
                              item.name.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                  fontFamily: "Roboto Regular",
                                  color: Colors.grey),
                            )),
                      ),
                    ))
                .toList()),
      ),
    );
