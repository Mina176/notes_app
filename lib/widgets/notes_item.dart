import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app1/views/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color: const Color.fromARGB(255, 254, 202, 124),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text(
                      "Flutter Tips",
                      style: TextStyle(fontSize: 36, color: Colors.black),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 14, right: 24),
                      child: Text(
                        'Build your career with Tharwat Samy',
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.trash,
                      ),
                      color: Colors.black,
                      iconSize: 25,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Feb 27 ,2025 ',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
