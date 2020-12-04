import 'package:flutter/material.dart';
import 'package:uts_flutter/components/text_field_container.dart';
import 'package:uts_flutter/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key key,
    this.validator,
  }) : super(key: key);

  final ValueChanged<String> validator;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Id.Member",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
