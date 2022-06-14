import 'package:auth_pages/constants.dart';
import 'package:auth_pages/widgets/background_image.dart';
import 'package:auth_pages/widgets/buttons.dart';
import 'package:auth_pages/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: backgroundImage(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                const RightRoundedTextField(
                  hint: "Full Name",
                  svg: "assets/icons/Iconperson.svg",
                ),
                const RightRoundedTextField(
                  hint: "Email Address",
                  svg: "assets/icons/Iconemail.svg",
                ),
                const RightRoundedTextField(
                  hint: "Password",
                  svg: "assets/icons/Iconlock.svg",
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "REGISTER\n",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            TextSpan(
                              text: "Terms & Conditions",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: kSecondaryColor),
                            )
                          ],
                        ),
                      ),
                      const MyIconButton(svg: "assets/icons/Goarrow.svg"),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Social Login",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(decoration: TextDecoration.underline),
                      ),
                      Text(
                        "I am back, sign in!",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
