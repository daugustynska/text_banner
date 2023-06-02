import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_controller.dart';

class FontSizeSlider extends StatefulWidget {
  const FontSizeSlider({super.key});

  @override
  State<FontSizeSlider> createState() => _FontSizeSliderState();
}

class _FontSizeSliderState extends State<FontSizeSlider> {
  double currentSliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: Provider.of<ProviderController>(context).fontSize,
      min: 50,
      max: 150,
      divisions: 4,
      thumbColor: Colors.blue,
      activeColor: Colors.blue,
      label: currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          currentSliderValue = value;
        });
        Provider.of<ProviderController>(context, listen: false)
            .switchFontSize(currentSliderValue);
      },
    );
  }
}
