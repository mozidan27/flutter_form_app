import 'package:flutter/material.dart';
import 'package:flutter_form_app/views/register_view.dart';

void main() {
  runApp(const FlutterFormApp());
}

class FlutterFormApp extends StatelessWidget {
  const FlutterFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
