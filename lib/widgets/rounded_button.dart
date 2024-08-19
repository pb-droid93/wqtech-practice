import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Icon? icon;
  final Color? color;
  final TextStyle? style;
  final VoidCallback? callBack;

  const RoundedButton(
      {required this.title,
      this.icon,
      this.color = Colors.deepPurple,
      this.style,
      this.callBack,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack,
      style: ElevatedButton.styleFrom(
          shadowColor: color,
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16)))),
      child: icon != null
          ? Row(
              children: [
                icon!,
                SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: style,
                )
              ],
            )
          : Text(
              title,
              style: style,
            ),
    );
  }
}
