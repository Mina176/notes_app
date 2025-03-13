import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:notes_app1/constants.dart';
import 'package:notes_app1/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app1/models/note.dart';
import 'package:notes_app1/views/edit_note.dart';
import 'package:notes_app1/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddNoteCubit()),
      ],
      child: MaterialApp(
        initialRoute: NotesView.routeName,
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          NotesView.routeName: (context) => const NotesView(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          EditNoteView.routeName: (context) => const EditNoteView(),
        },
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: NotesView(),
      ),
    );
  }
}
