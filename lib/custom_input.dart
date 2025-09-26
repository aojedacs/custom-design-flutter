import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomInput({
    super.key,
    required this.text,
    required this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child:EditableText(
          controller: controller,
          focusNode: FocusNode(),
          style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
          cursorColor: const Color(0xFF3333FF),
          backgroundCursorColor: const Color(0xFF3333FF),
          keyboardType: keyboardType,
          obscureText: isPassword,
          maxLines: 1,
        ),
        // child: TextField(
        //   controller: controller,
        //   obscureText: isPassword,
        //   keyboardType: keyboardType,
        //   decoration: InputDecoration(
        //     border: InputBorder.none,
        //     hintText: text,
        //     hintStyle: const TextStyle(color: Color(0xFF888888)),
        //   ),
        // )
      );
  }
}
