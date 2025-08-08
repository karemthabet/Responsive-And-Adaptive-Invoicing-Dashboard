import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobilelayout,
    required this.tabletlayout,
    required this.desktoplayout,
  });
  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return mobilelayout(context);
        } else if (constraints.maxWidth < 900) {
          // Tablet layout
          return tabletlayout(context);
        } else {
          // Desktop layout
          return desktoplayout(context);
        }
      },
    );
  }
}
