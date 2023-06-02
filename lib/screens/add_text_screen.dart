import 'package:flutter/material.dart';

import '../widgets/widgets_exports.dart';
import 'info_screen.dart';

class AddTextScreen extends StatefulWidget {
  const AddTextScreen({super.key});

  @override
  State<AddTextScreen> createState() => _AddTextScreenState();
}

class _AddTextScreenState extends State<AddTextScreen> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 8.0,
          top: 30.0,
          bottom: 8.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: TextInputField(
                      messageController: messageController,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: DisplayTextButton(
                      message: messageController,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: const CancelTextButton(),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 40.0,
                      child: Icon(
                        Icons.text_fields,
                        color: Colors.white,
                        size: 40.0,
                        semanticLabel: 'Font',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1.0,
                      width: 30.0,
                      indent: 5.0,
                      endIndent: 15.0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: const FontSwitch(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.text_decrease,
                            color: Colors.white,
                            size: 30.0,
                            semanticLabel: 'Text decrease',
                          ),
                          FontSizeSlider(),
                          Icon(
                            Icons.text_increase,
                            color: Colors.white,
                            size: 30.0,
                            semanticLabel: 'Text increase',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40.0,
                      child: Icon(
                        Icons.text_format,
                        color: Colors.white,
                        size: 40.0,
                        semanticLabel: 'Text color',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1.0,
                      width: 30.0,
                      indent: 5.0,
                      endIndent: 15.0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: const ColorSwitch(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40.0,
                      child: Icon(
                        Icons.format_color_fill,
                        color: Colors.white,
                        size: 34.0,
                        semanticLabel: 'Background color',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1.0,
                      width: 30.0,
                      indent: 5.0,
                      endIndent: 15.0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: const BackgroundColorSwitch(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InfoScreen(),
            ),
          ),
          color: Colors.grey.shade300,
          highlightColor: Colors.white,
          icon: const Icon(
            Icons.info_outline,
            size: 30.0,
            semanticLabel: 'About the app',
          ),
        ),
      ),
    );
  }
}
