import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app1/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app1/models/note.dart';
import 'package:notes_app1/widgets/custom_button.dart';
import 'package:notes_app1/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode validateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var notemodel = NoteModel(
                          title: title!,
                          content: content!,
                          date: DateTime.now().toString(),
                          color: Colors.red.r);

                      BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                    } else {
                      setState(() {
                        validateMode = AutovalidateMode.always;
                      });
                    }
                  });
            },
          ),
        ],
      ),
    );
  }
}
