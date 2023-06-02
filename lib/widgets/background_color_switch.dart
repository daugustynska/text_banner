import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';

class BackgroundColorSwitch extends StatefulWidget {
  const BackgroundColorSwitch({super.key});

  @override
  State<StatefulWidget> createState() => _BackgroundColorSwitchState();
}

class _BackgroundColorSwitchState extends State<BackgroundColorSwitch> {
  int value = 0;

  List<Color> switchBackgroundColorList = [
    Colors.white,
    Colors.yellowAccent.shade100,
    Colors.pink.shade200,
    Colors.redAccent.shade200,
    Colors.greenAccent.shade200,
    Colors.teal,
    Colors.indigoAccent,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List<Widget>.generate(
        switchBackgroundColorList.length,
        (int index) {
          return RawChip(
            label: const Text(
              "         ",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            selected: switchBackgroundColorList[index] ==
                Provider.of<ProviderController>(context).backgroundColor,
            backgroundColor: switchBackgroundColorList[index],
            selectedColor: switchBackgroundColorList[index],
            side: BorderSide(
              width: 3.0,
              color: switchBackgroundColorList[index] ==
                      Provider.of<ProviderController>(context).backgroundColor
                  ? Colors.blue
                  : Colors.transparent,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            showCheckmark: false,
            onSelected: (bool selected) {
              setState(() {
                value = index;
              });
              Provider.of<ProviderController>(context, listen: false)
                  .switchBackgroundColor(switchBackgroundColorList[value]);
            },
          );
        },
      ),
    );
  }
}
