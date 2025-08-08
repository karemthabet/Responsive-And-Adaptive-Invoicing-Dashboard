import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/drawer/presentation/views/widgets/custom_drawer.dart';


class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomDrawer()
    );
  }
}
