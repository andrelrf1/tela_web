import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  ActionButton({@required this.title, this.onPressed}) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
