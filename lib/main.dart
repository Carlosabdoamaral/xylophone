import 'package:flutter/material.dart';
import 'package:xylophone/select_theme.dart';

void main() {
  runApp(
    MaterialApp(
      home: Controller(),
    )
  );
}

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectThemePage();
  }
}
