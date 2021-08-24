import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        // ignore: deprecated_member_use
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          press: () {},
        ),

        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
          press: () {},
        ),

        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          press: () {},
        ),

        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          press: () {},
        ),

         ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log OUt",
          press: () {},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
