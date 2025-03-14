import 'package:bloc/bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app1/constants.dart';
import 'package:notes_app1/models/note.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


fetchNotes(){
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes =  notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
}

}
