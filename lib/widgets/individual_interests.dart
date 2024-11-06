import 'package:flutter/material.dart';
import 'package:flutter_form_app/widgets/check_your_interest.dart';

class IndividualInterests extends StatelessWidget {
  const IndividualInterests({
    super.key,
    required this.interest,
  });
  final String interest;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(interest),
        const CheckYourInterest(),
      ],
    );
  }
}
