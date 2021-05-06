import 'package:flutter/material.dart';
import 'package:tela_web/screens/desktop.dart';
import 'package:tela_web/screens/mobile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100.0) {
          return Desktop();
        } else {
          return Mobile();
        }
      },
    );
  }
}
