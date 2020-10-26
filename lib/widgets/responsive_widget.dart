
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key key,
        @required this.largeScreen,
        this.mediumScreen,
        this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    // print('large: ${MediaQuery.of(context).size.width}');
    return MediaQuery.of(context).size.width < 1300;
  }

  static bool isLargeScreen(BuildContext context) {
    // print('large: ${MediaQuery.of(context).size.width}');
    return MediaQuery.of(context).size.width > 1300;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1300 &&
        MediaQuery.of(context).size.width < 1700;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1300) {
          // print('LARGE: ${MediaQuery.of(context).size.width}');
          return largeScreen;
        } else if (constraints.maxWidth < 1700 && constraints.maxWidth > 1300) {
          // print('MediumLarge: ${MediaQuery.of(context).size.width}');
          return mediumScreen ?? largeScreen;
        } else {
          // print('smallLarge: ${MediaQuery.of(context).size.width}');
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}