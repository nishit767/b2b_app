import 'package:b2b_app/Shared/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    ''
    '';

class CustomCupertinoButton extends StatelessWidget {
  CustomCupertinoButton(
    this.function, {
    Key key,
    @required this.formKey,
  }) : super(key: key);
  Function function;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Transform.scale(
        scale: 0.6,
        child: CupertinoButton(
          borderRadius: BorderRadius.circular(20),
          child: Text(
            'Log In',
            style: AppStyle.headingStyle2,
          ),
          color: Colors.blue,
          onPressed: () {
            function(formKey);
          },
        ),
      ),
    );
  }
}
