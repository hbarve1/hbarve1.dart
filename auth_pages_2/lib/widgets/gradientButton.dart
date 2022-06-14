import 'package:flutter/material.dart';
import 'package:auth_pages_2/constant.dart';

class GradiantButton extends StatelessWidget {


  final double radious;
  final String text;
  final IconData icon;

     GradiantButton({Key? key, 
    this.radious = 50, required this.text, required this.icon
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radious),
      ),
      padding: const EdgeInsets.all(0),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radious),
            gradient: const LinearGradient(
              colors: kButtonGradiant,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                width: 9,
                child: Icon(
                  icon,
                  size: 18,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
