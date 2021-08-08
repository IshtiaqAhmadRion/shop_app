import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocuseNode;
  late FocusNode pin3FocuseNode;
  late FocusNode pin4FocuseNode;

  @override
  void initState() {
    super.initState();
    pin2FocuseNode = FocusNode();
    pin3FocuseNode = FocusNode();
    pin4FocuseNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocuseNode.dispose();
    pin3FocuseNode.dispose();
    pin4FocuseNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocuseNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin2FocuseNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocuseNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin3FocuseNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocuseNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin4FocuseNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  pin4FocuseNode.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(height: Sizeconfig.screenHeight! * 0.15),
        CustomButton(text: "Continue", voidCallback: () {})
      ],
    ));
  }
}
