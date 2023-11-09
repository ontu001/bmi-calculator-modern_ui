import 'package:flutter/material.dart';

class heightSlider extends StatelessWidget {
  int height;
 
  ValueChanged<double> onChanged;
  heightSlider(
      {required this.height, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0xFFEB1555).withOpacity(0.12),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
      child: Slider(
        value: height.toDouble(),
        min: 120,
        max: 220,
        onChanged: onChanged,
      ),
    );
  }
}
