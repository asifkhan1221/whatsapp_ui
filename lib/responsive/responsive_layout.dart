import 'package:flutter/widgets.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mblScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout(
      {super.key,
      required this.mblScreenLayout,
      required this.webScreenLayout, required mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > 900) {
          return webScreenLayout;
        }
        return mblScreenLayout;
      },
    );
  }
}
