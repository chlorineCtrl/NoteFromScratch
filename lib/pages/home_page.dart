import 'package:flutter/material.dart';
import 'package:note_flutterfire/widgets/bottom_navbar.dart';
import 'package:note_flutterfire/widgets/floating_create_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterNotes"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your notes',
          ),

          // NOTE CARDS
          SizedBox(),
        ],
      ),
      floatingActionButton: const FloatingCreateButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
