import 'package:hive_ce_flutter/hive_flutter.dart';

part 'note.g.dart';

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final double color;
  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
