import 'package:flutter/material.dart';

class EmailInputWidgets extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidgets({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      decoration: const InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(),
      ),
      obscureText: true,
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Email';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
