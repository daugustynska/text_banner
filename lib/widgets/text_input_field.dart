import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController messageController;

  const TextInputField({super.key, required this.messageController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: messageController,
      autofocus: false,
      autocorrect: false,
      keyboardType: TextInputType.text,
      keyboardAppearance: Brightness.dark,
      inputFormatters: [
        LengthLimitingTextInputFormatter(40),
        FilteringTextInputFormatter.allow(
          RegExp("[A-Za-z0-9 !?@#%&*-+=,.:;|/<>(){}[]]*"),
        ),
      ],
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: const InputDecoration(
        label: Text('Type your text here!'),
        labelStyle: TextStyle(
          color: Colors.blue,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
