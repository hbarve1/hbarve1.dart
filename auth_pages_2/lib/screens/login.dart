import 'package:auth_pages_2/constant.dart';
import 'package:auth_pages_2/widgets/gradientButton.dart';
import 'package:auth_pages_2/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login01 extends StatelessWidget {
  const Login01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: kBackground01,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            heading(screenWidth),
            const SizedBox(
              height: 50,
            ),
             const MyInputFiled(
              hint: "Username",
              inputIcon: Icons.person_outline,
            ),
            const SizedBox(
              height: 20,
            ),
            const MyInputFiled(
              hint: "Password",
              isPass: true,
              inputIcon: Icons.lock_outline,
              iconColor: Color(0xFF4AD284),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Forgot Password?",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  color: const Color(0xFF757575).withOpacity(.5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GradiantButton(
                text: "Sign In",
                icon: Icons.arrow_forward,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF757575).withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Sign Up".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kPrimary),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Container heading(double screenWidth) {
    return Container(
      alignment: Alignment.center,
      width: screenWidth,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: [
            TextSpan(text: "hello! \n\n", style: kHeading01),
            TextSpan(
              text:
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
              style:  TextStyle(
                fontSize: 17,
                color:  Color(0xFF4A69FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
