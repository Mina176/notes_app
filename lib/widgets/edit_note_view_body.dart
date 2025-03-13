import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app1/widgets/custom_app_bar.dart';
import 'package:notes_app1/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: FontAwesomeIcons.check,
            ),
            CustomTextField(hintText: 'Title'),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
