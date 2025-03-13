import 'package:flutter/material.dart';
import 'package:notes_app1/constants.dart';

class CustomButton extends StatelessWidget {
  const  CustomButton({super.key, required this.onTap});
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
