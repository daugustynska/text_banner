import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';
import '../utilities/logic.dart';

class DisplayTextButton extends StatelessWidget {
  final TextEditingController message;

  const DisplayTextButton({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          width: 2.0,
          color: Colors.green,
        ),
      ),
      onPressed: () {
        if (isNotEmptyString(message.text)) {
          Provider.of<ProviderController>(context, listen: false)
              .changeText(message.text);
          Navigator.pop(context);
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.grey.shade800,
                elevation: 2.0,
                contentPadding: const EdgeInsets.all(25.0),
                content: const Text(
                  'Text field cannot be empty.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }
      },
      child: const Text(
        '  Display  ',
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
      ),
    );
  }
}
