import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            doc["note_title"],
          ),
          Text(
            doc["note_date"],
          ),
          Text(
            doc["note_data"],
          ),
        ],
      ),
    ),
  );
}
