import 'package:flutter/material.dart';
import 'package:notes_app1/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String routeName = 'edit view';
  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody();
  }
}
