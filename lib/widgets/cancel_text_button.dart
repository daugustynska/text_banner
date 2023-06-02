import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';

class CancelTextButton extends StatelessWidget {
  const CancelTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
/*         Provider.of<ProviderController>(context, listen: false)
            .changeText(ProviderController.text); */
        Navigator.pop(context);
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          width: 2.0,
          color: Colors.red,
        ),
      ),
      child: const Icon(
        Icons.close,
        color: Colors.red,
        size: 35.0,
        semanticLabel: 'Cancel',
      ),
    );
  }
}
