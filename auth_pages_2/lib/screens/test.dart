import 'package:auth_pages_2/widgets/gradientButton.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: GradiantButton(
          text: "Test",
          icon: Icons.arrow_left,
        ),
      ),
    );
  }
}
