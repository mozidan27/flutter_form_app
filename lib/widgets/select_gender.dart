import 'package:flutter/material.dart';

class GenderOptions extends StatefulWidget {
  const GenderOptions({super.key});

  @override
  State<GenderOptions> createState() => _GenderOptionsState();
}

class _GenderOptionsState extends State<GenderOptions> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4)),
        child: DropdownButtonFormField<String>(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select gender';
            }
            return null;
          },
          hint: Text(
            "Selet Gender",
            style: TextStyle(color: Colors.grey[800], fontSize: 16),
          ),
          isExpanded: true,
          value: gender,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          ),
          style: const TextStyle(color: Colors.white),
          onChanged: (String? newValue) {
            setState(() {
              gender = newValue!;
            });
          },
          items: const [
            DropdownMenuItem(
                value: 'male',
                child: DefaultTextStyle(
                    style: TextStyle(color: Colors.black),
                    child: Text("Male"))),
            DropdownMenuItem(
                value: 'Female',
                child: DefaultTextStyle(
                    style: TextStyle(color: Colors.black),
                    child: Text("Female"))),
            DropdownMenuItem(
                value: 'Other',
                child: DefaultTextStyle(
                    style: TextStyle(color: Colors.black),
                    child: Text("Other"))),
          ],
        ),
      ),
    );
  }
}
