import 'package:flutter/material.dart';
import 'package:flutter_broster/model/data_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_broster/screens/screen1.dart';

void main() {
  runApp(const question());
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;

class question extends StatelessWidget {
  const question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),
    );
  }
}
