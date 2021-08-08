import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradienColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-z]+");

const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPessNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMathcPassError = "Password don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullErro = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

//OTP input decoration

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(color: kTextColor),
);
}
