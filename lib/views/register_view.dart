import 'package:flutter/material.dart';
import 'package:flutter_form_app/widgets/custom_form_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Flutter Form Field",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[600]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: Icon(Icons.person, size: 64, color: Colors.grey),
            ),
            SliverToBoxAdapter(
              child: CustomRegisterForm(),
            ),
          ],
        ),
      ),
    );
  }
}
