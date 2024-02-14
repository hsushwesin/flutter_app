import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;
  final double minWidth;
  final double height;
  final TextStyle? textStyle;

  const RoundedButton({
    Key? key,
    required this.btnText,
    required this.onBtnPressed,
    this.minWidth = 320,
    this.height = 60,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.black,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: () {
          onBtnPressed();
        },
        minWidth: minWidth,
        height: height,
        child: Text(
          btnText,
          style: textStyle ?? const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
