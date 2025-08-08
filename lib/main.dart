import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/drawer/presentation/views/drawer_view.dart';

void main() {
  runApp(const ResponsiveAndAdaptiveInvoicingDashboard());
}

class ResponsiveAndAdaptiveInvoicingDashboard extends StatelessWidget {
  const ResponsiveAndAdaptiveInvoicingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerView(),
    );
  }
}
