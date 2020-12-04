import 'package:flutter/material.dart';
import 'package:uts_flutter/Screens/Login/components/background.dart';
import 'package:uts_flutter/components/already_have_an_account_acheck.dart';
import 'package:uts_flutter/components/rounded_button.dart';
import 'package:uts_flutter/components/rounded_input_field.dart';
import 'package:uts_flutter/components/rounded_password_field.dart';
import 'package:uts_flutter/login_with_validation/page_login.dart';

import '../../../home/home_screen.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/images/Login.png",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Username",
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Username';
                }
                return null;
              },
            ),
            RoundedPasswordField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Id.Member';
                }
                return null;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PageLogin();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
