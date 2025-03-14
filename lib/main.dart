import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:notes_app1/constants.dart';
import 'package:notes_app1/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app1/models/note.dart';
import 'package:notes_app1/simple_bloc_observer.dart';
import 'package:notes_app1/views/edit_note.dart';
import 'package:notes_app1/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
