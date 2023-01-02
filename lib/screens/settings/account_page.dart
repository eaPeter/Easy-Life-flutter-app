import 'package:easy_life/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../components/txt_field.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        title: const Text('Account', style: kTxtHeadingMainStyle),
        centerTitle: true,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding20),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/account'),
                  child: Text(
                    'Save',
                    style: kTxtTopicStyle.copyWith(color: kColorBlue),
                  ),
                ),
              ),
            ],
          )
        ],
        backgroundColor: kColorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kColorTitleText),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: kPadding20),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile_pic1.jpg'),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(color: kColorTextLight),
                  ),
                ),
                const SizedBox(height: kPadding12),
                Text(
                  'Change profile picture',
                  style: kTxtSubTopicStyle.copyWith(color: kColorBlue),
                ),
                const SizedBox(height: kPadding32),
                FormBuilder(
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'full_name',
                        decoration: InputDecoration(
                          hintText: 'Full name'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: kPadding16),
                      FormBuilderTextField(
                        name: 'username',
                        decoration: InputDecoration(
                          hintText: 'User name'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: kPadding16),
                      FormBuilderTextField(
                        name: 'email',
                        decoration: InputDecoration(
                          hintText: 'Email address'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: kPadding16),
                      FormBuilderTextField(
                        name: 'phone_number',
                        decoration: InputDecoration(
                          hintText: 'Phone number'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: kPadding16),
                      FormBuilderTextField(
                        name: 'whatsapp_number',
                        decoration: InputDecoration(
                          hintText: 'Whatsapp number'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: kPadding16),
                      FormBuilderTextField(
                        name: 'telegram_handle',
                        decoration: InputDecoration(
                          hintText: 'Telegram handle'.toUpperCase(),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
