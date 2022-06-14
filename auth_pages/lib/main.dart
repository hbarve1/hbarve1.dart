import 'package:auth_pages/constants.dart';
import 'package:auth_pages/sign_in_screen.dart';
import 'package:auth_pages/widgets/background_image.dart';
import 'package:auth_pages/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen #2',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          button: TextStyle(fontWeight: FontWeight.bold),
          headline1: TextStyle(fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme:
            const InputDecorationTheme(enabledBorder: InputBorder.none),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: backgroundImageWithText(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "CONTINUE WITH",
                    style: Theme.of(context).textTheme.button,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const MyIconButton(svg: "assets/icons/Iconfacebook.svg"),
                        const MyIconButton(svg: "assets/icons/Icontwitter.svg"),
                        const MyIconButton(svg: "assets/icons/Icondribbble.svg"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kBlackColor,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignInScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "EMAIL",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: kWhiteColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
