import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';

class ColorSwitch extends StatefulWidget {
  const ColorSwitch({super.key});

  @override
  State<StatefulWidget> createState() => _ColorSwitchState();
}

class _ColorSwitchState extends State<ColorSwitch> {
  int value = 0;

  List<Color> switchColorList = [
    Colors.white,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.lime,
    Colors.green,
    Colors.lightBlue.shade300,
    Colors.indigo,
    Colors.purple,
    Colors.brown.shade800,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: List<Widget>.generate(
        switchColorList.length,
        (int index) {
          return RawChip(
            label: const Text(
              "",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            selected: switchColorList[index] ==
                Provider.of<ProviderController>(context).color,
            backgroundColor: switchColorList[index],
            selectedColor: switchColorList[index],
            side: BorderSide(
              width: 3.0,
              color: switchColorList[index] ==
                      Provider.of<ProviderController>(context).color
                  ? Colors.blue
                  : Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            shadowColor: Colors.black,
            showCheckmark: false,
            onSelected: (bool selected) {
              setState(() {
                value = index;
              });
              Provider.of<ProviderController>(context, listen: false)
                  .switchColor(switchColorList[value]);
            },
          );
        },
      ),
    );
  }
}
