import 'package:flutter/material.dart';

class CheckYourInterest extends StatefulWidget {
  const CheckYourInterest({super.key});

  @override
  State<CheckYourInterest> createState() => _CheckYourInterestState();
}

class _CheckYourInterestState extends State<CheckYourInterest> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.grey,
      value: ischecked,
      onChanged: (value) {
        setState(() {
          ischecked = value;
        });
      },
    );
  }
}
