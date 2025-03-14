import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app1/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app1/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app1/widgets/custom_app_bar.dart';
import 'package:notes_app1/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String routeName = 'notes view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 22),
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  },
                );
              },
              child: const Icon(Icons.add),
            ),
          ),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: CustomAppBar(
                title: 'Notes',
                icon: FontAwesomeIcons.magnifyingGlass,
              ),
            ),
            Expanded(
              child: NotesListView(),
            )
          ])),
    );
  }
}
