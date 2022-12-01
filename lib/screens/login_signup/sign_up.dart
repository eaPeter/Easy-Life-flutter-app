import 'package:easy_life/constants.dart';
import 'package:easy_life/widgets/txt_field.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key, required this.courseName});

  final _fNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  final String courseName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 61,
          ),
          TxtField(
              title: 'Full name',
              hint: 'Enter full name',
              txtController: _fNameController),
          TxtField(
              title: 'Email Address',
              hint: 'Enter email address',
              txtController: _emailController),
          TxtField(
              title: 'Phone Number',
              hint: 'Enter phone number',
              txtController: _phoneController),
          TxtField(
              title: 'Password',
              hint: 'Enter password',
              txtController: _passController),
        ],
      ),
    );
  }
}
