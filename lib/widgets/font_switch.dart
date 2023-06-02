import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';

class FontSwitch extends StatefulWidget {
  const FontSwitch({super.key});

  @override
  State<StatefulWidget> createState() => _FontSwitchState();
}

class _FontSwitchState extends State<FontSwitch> {
  int value = 0;
  List<String> switchFontList = ['RobotoSlab', 'Courgette', 'Editundo'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List<Widget>.generate(
        switchFontList.length,
        (int index) {
          return RawChip(
            label: Text(
              switchFontList[index],
              style: TextStyle(
                fontFamily: switchFontList[index],
                fontSize: 14,
                color: switchFontList[index] ==
                        Provider.of<ProviderController>(context).font
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            selected: switchFontList[index] ==
                Provider.of<ProviderController>(context).font,
            backgroundColor: const Color.fromARGB(255, 48, 48, 48),
            selectedColor: Colors.white,
            side: BorderSide(
              width: switchFontList[index] ==
                      Provider.of<ProviderController>(context).font
                  ? 3.0
                  : 1.0,
              color: switchFontList[index] ==
                      Provider.of<ProviderController>(context).font
                  ? Colors.blue
                  : Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            showCheckmark: false,
            onSelected: (bool selected) {
              setState(() {
                value = index;
              });
              Provider.of<ProviderController>(context, listen: false)
                  .switchFont(switchFontList[value]);
            },
          );
        },
      ),
    );
  }
}
