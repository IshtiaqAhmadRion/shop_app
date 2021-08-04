import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/from_error.dart';
import 'package:shop_app/components/no_account_text.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: Sizeconfig.screenHeight! * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your accoutn ",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Sizeconfig.screenHeight! * 0.1,
              ),
              ForgotPassform(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassform extends StatefulWidget {
  ForgotPassform({Key? key}) : super(key: key);

  @override
  _ForgotPassformState createState() => _ForgotPassformState();
}

class _ForgotPassformState extends State<ForgotPassform> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(
                svgIcon: 'assets/icons/Mail.svg',
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: Sizeconfig.screenHeight! * 0.1,
          ),
          CustomButton(
            text: "Continue",
            voidCallback: () {
              if(_formKey.currentState!.validate()){

              }
            },
          ),
          SizedBox(
            height: Sizeconfig.screenHeight! * 0.1,
          ),
          NoAccountText(),
        ],
      ),
    );
  }
}
