import 'package:flutter/material.dart';
import 'package:note_flutterfire/widgets/bottom_navbar.dart';
import 'package:note_flutterfire/widgets/floating_create_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note_flutterfire/widgets/note_card.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Your notes :',
              style: TextStyle(fontSize: 20),
            ),
          ),

          // NOTE CARDS
          const SizedBox(),

          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('Notes').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasData) {
                  return GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: snapshot.data!.docs
                        .map((note) => noteCard(() => null, note))
                        .toList(),
                  );
                }
                return const Text('there is no notes yet');
              },
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingCreateButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
