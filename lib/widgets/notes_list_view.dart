import 'package:flutter/material.dart';
import 'package:notes_app1/widgets/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: ListView(
        children: [
          NoteItem(),
          NoteItem(),
          NoteItem(),
          NoteItem(),
        ],
      ),
    );
  }
}
