import 'package:flutter/material.dart';

class ElevationPrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ElevationPrimaryButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(double.infinity, 50),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(color: Colors.blue.shade600)))),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
