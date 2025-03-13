import 'package:flutter/material.dart';
import 'package:notes_app1/widgets/custom_button.dart';
import 'package:notes_app1/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
