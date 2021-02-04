import 'package:flutter/material.dart';

void main() => runApp(SwitchExample());

class SwitchExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const APP_TITLE = 'Flutter Switch Example';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatefulWidget {
  @override
  _HomeRoute createState() => _HomeRoute();
}

class _HomeRoute extends State<HomeRoute> {
  //
  String _text = 'Switch OFF';
  bool _switchValue = false;

  void _switchChanged(bool isSwitchOn) {
    setState(() {
      _switchValue = isSwitchOn;
      _text = (isSwitchOn) ? 'Switch ON' : 'Switch OFF';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Switch(
              value: _switchValue,
              onChanged: _switchChanged,
            ), // Switch()
            Text(_text),
          ], // List<Widget>[]
        ), // Row()
      ), // SafeArea()
    ); // Scaffold()
  }
}
