import 'package:flutter/material.dart';
import 'package:food_app/Components/default_button.dart';

import 'menu_item.dart' as food_app;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          food_app.MenuItem(
            title: "Home",
            press: () {},
          ),
          food_app.MenuItem(
            title: "about",
            press: () {},
          ),
          food_app.MenuItem(
            title: "Pricing",
            press: () {},
          ),
          food_app.MenuItem(
            title: "Contact",
            press: () {},
          ),
          food_app.MenuItem(
            title: "Login",
            press: () {},
          ),
          DefaultButton(
            text: "Get Started",
            press: () {},
          ),
        ],
      ),
    );
  }
}
