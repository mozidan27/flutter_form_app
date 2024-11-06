import 'package:flutter/material.dart';
import 'package:flutter_form_app/widgets/individual_interests.dart';

class Interests extends StatelessWidget {
  const Interests({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IndividualInterests(
        interest: "Sport",
      ),
      IndividualInterests(
        interest: "Music",
      ),
      IndividualInterests(
        interest: "Reading",
      ),
      IndividualInterests(
        interest: "Travel",
      ),
    ]);
  }
}
