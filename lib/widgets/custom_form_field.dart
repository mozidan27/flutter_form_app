import 'package:flutter/material.dart';
import 'package:flutter_form_app/validation/validation_methods.dart';
import 'package:flutter_form_app/views/home_view.dart';
import 'package:flutter_form_app/widgets/interests.dart';
import 'package:flutter_form_app/widgets/my_button.dart';
import 'package:flutter_form_app/widgets/my_text_field.dart';
import 'package:flutter_form_app/widgets/select_gender.dart';

// ignore: must_be_immutable
class CustomRegisterForm extends StatelessWidget {
  CustomRegisterForm({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const MyTextFormField(
              keyboardType: TextInputType.text,
              validator: nameValidation,
              text: 'Name',
              obscureText: false,
              prefixIcon: Icon(Icons.person)),
          const MyTextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: emailValidation,
            text: 'Email',
            obscureText: false,
            prefixIcon: Icon(Icons.email),
          ),
          const MyTextFormField(
            keyboardType: TextInputType.phone,
            validator: phoneValidation,
            text: 'Phone Number',
            obscureText: false,
            prefixIcon: Icon(Icons.phone),
          ),
          MyTextFormField(
            controller: passwordController,
            validator: passwordValidation,
            text: 'Password',
            obscureText: true,
            prefixIcon: const Icon(Icons.password),
          ),
          MyTextFormField(
            validator: (value) {
              if (value == null || value != passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            text: 'Confirm Password',
            obscureText: true,
            prefixIcon: const Icon(Icons.password),
          ),
          const SizedBox(height: 24),
          const GenderOptions(),
          const SizedBox(height: 24),
          const Interests(),
          const SizedBox(height: 70),
          Center(child: MyButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ));
              }
            },
          )),
        ],
      ),
    );
  }
}
