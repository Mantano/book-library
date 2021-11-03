import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;

  ConfirmButton({
    @required this.text,
    @required this.onPressed,
    this.height = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      primary: Colors.white.withOpacity(0.9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      textStyle: TextStyle(
        fontSize: 18.0,
        fontFamily: 'GoogleFonts.nunito().fontFamily',
        fontWeight: FontWeight.w700,
      ),
    );

    return SizedBox(
        width: double.infinity,
        height: height,
        child: TextButton(
          style: flatButtonStyle,
          onPressed: onPressed,
          child: Text(text),
        ));
  }
}
