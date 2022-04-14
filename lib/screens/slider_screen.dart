import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkboxEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 600,
              activeColor: AppTheme.primaryColor,
              divisions: 10,
              value: _sliderValue,
              onChanged: _checkboxEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          Checkbox(
              value: _checkboxEnabled,
              onChanged: (_) {
                _checkboxEnabled = !_checkboxEnabled;
                setState(() {});
              }),
          CheckboxListTile(
              value: _checkboxEnabled,
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primaryColor,
              onChanged: (value) {
                _checkboxEnabled = !_checkboxEnabled;
                setState(() {});
              }),
          Switch(
              value: _checkboxEnabled,
              onChanged: (value) {
                _checkboxEnabled = !_checkboxEnabled;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              value: _checkboxEnabled,
              onChanged: (value) {
                _checkboxEnabled = !_checkboxEnabled;
                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage(
                      'https://lukount-website-v3.herokuapp.com/src/img/home/Luka-default.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
