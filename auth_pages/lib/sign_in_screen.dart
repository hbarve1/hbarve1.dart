import 'package:auth_pages/constants.dart';
import 'package:auth_pages/register_screen.dart';
import 'package:auth_pages/widgets/background_image.dart';
import 'package:auth_pages/widgets/buttons.dart';
import 'package:auth_pages/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                              text: "SIGN IN\n",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            TextSpan(
                              text: "Forgot password?",
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const RegisterScreen();
                            },
                          ));
                        },
                        child: Text(
                          "I am new, register me!",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(decoration: TextDecoration.underline),
                        ),
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
