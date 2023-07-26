import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      clipBehavior: Clip.antiAlias,
      notchMargin: 5,
      shape: CircularNotchedRectangle(),
      color: Colors.red,
    );
  }
}
