import 'package:flutter/material.dart';
import '../../../modules/authentecationScreens/RegisterScreen.dart';
import '../../../modules/authentecationScreens/loginScreen.dart';
import '../component.dart';

PreferredSizeWidget defaultAppBar(context) => AppBar(
      leading: Image.asset('assets/images/logo.jpg'),
      title: Row(
        children: [
          defaultTextButton(function: () {}, text: 'About Us '),
          rowDivider(),
          defaultTextButton(function: () {}, text: 'Category '),
          rowDivider(),
          defaultTextButton(function: () {}, text: ' Services'),
          rowDivider(),
          defaultTextButton(function: () {}, text: 'Requests'),
          const Spacer(),
          defaultButton(
              function: () {
                navigateTo(context, LoginScreen());
              },
              text: 'Sign UP'),
          rowDivider(),
          defaultButton(
              function: () {
                navigateTo(context, RegisterScreen());
              },
              text: 'Login')
        ],
      ),
    );
