import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';
import 'add_text_screen.dart';

class DisplayTextScreen extends StatefulWidget {
  const DisplayTextScreen({super.key});

  @override
  State<DisplayTextScreen> createState() => _DisplayTextScreenState();
}

class _DisplayTextScreenState extends State<DisplayTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ProviderController>(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom * 0.20,
          top: MediaQuery.of(context).viewInsets.top * 0.20,
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              Provider.of<ProviderController>(context).text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Provider.of<ProviderController>(context).color,
                fontSize: Provider.of<ProviderController>(context).fontSize,
                fontFamily: Provider.of<ProviderController>(context).font,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                height: 1.4,
              ),
            ),
          ),
        ),
      ),
      drawer: SizedBox(
        width: double.infinity,
        child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
            side: BorderSide(
              color: Colors.grey.shade900,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: const AddTextScreen(),
        ),
      ),
    );
  }
}
