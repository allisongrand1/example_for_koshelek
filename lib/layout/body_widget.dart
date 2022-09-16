import 'package:flutter/material.dart';
import 'fotter.dart';

class BodyWidget extends StatelessWidget {
  final List<Widget> bodySlivers;
  final bool availabilityFotter;
  const BodyWidget(
      {Key? key, required this.bodySlivers, required this.availabilityFotter})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: bodySlivers + // Контент страницы
            [
              if (availabilityFotter)
                const SliverToBoxAdapter(child: FotterWidget())
            ]);
  }
}
