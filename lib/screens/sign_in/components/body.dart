import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/custom_surffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
//import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sign in with your email and password \nor continue with social meida",
              textAlign: TextAlign.center,
            ),
            SignForm(),
          ],
        ),
      ),
    ));
  }
}

class SignForm extends StatefulWidget {
  SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
           
          ),
          // FormError(
          //   errors: errors),
          CustomButton(text: 'Continue', voidCallback: () {})
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add('Please enter your valid email');
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
    );
  }
}

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/Error.svg',
              height: getProportionateScreenWidth(2),
              width: getProportionateScreenWidth(2),
            ),
            SizedBox(
              width: getProportionateScreenWidth(2),
            ),
            Text(errors[0]),
          ],
        ),
      ],
    );
  }
}
