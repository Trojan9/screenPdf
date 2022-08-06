// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
//  final Color boxShadowColor;
  final Color? textColor;
  final Color? color;
  final Widget? text;
  final Function()? onPressed;
  final bool? useBorderColor;

  const CustomRaisedButton({
    Key? key,
//    this.boxShadowColor,
    this.textColor,
    this.color,
    this.text,
    this.onPressed,
    this.useBorderColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.height * 0.5,
      child: RaisedButton(
        elevation: 1,
        textColor: textColor ?? Colors.white54,
        color: color ?? const Color.fromARGB(255, 20, 166, 233),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          side: useBorderColor!
              ? BorderSide(color: textColor!, width: 1)
              : const BorderSide(
                  color: Color.fromARGB(6, 228, 228, 228), width: 0),
        ),
        onPressed: onPressed,
        child: text ?? const Text(''),
      ),
    );
  }
}
