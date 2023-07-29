import 'package:flutter/material.dart';
import 'package:note_flutterfire/pages/writing_page.dart';

class FloatingCreateButton extends StatelessWidget {
  const FloatingCreateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

