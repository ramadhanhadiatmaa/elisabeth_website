import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile, desktop, tablet;
  const ResponsiveWidget({Key? key, this.mobile, this.desktop, this.tablet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 660) {
        return mobile!;
      } else if (constraints.maxWidth >= 660 && constraints.maxWidth < 1114) {
        return tablet!;
      } else {
        return desktop!;
      }
    });
  }
}
