import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key? key,
   required this.text,
   required  this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      // child: FlatButton(
      //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      //   color: kPrimaryColor,
      //   onPressed: press,
      //   child: Text(
      //     text.toUpperCase(),
      //   ),
      // ),
      child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {},
          child: Text(text.toLowerCase()
        ),
      )
    );
  }
}
