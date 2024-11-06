import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(16)),
            child: const Center(
                child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            )),
          ),
        ));
  }
}
