import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlinedBorderInput(),
        focusedBorder: buildOutlinedBorderInput(),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_outlined, size: 22),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedBorderInput() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
