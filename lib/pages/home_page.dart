import 'package:flutter/material.dart';
import 'package:note_flutterfire/pages/writing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Home Page'),
      ),
      floatingActionButton: SizedBox(
        height: 100,
        width: 100,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WritingPage(),
              ),
            );
          },
          backgroundColor: Colors.redAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Colors.red,
      ),
    );
  }
}
