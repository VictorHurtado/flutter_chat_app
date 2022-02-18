import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController editingController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInputWidget(
      {Key? key,
      required this.icon,
      required this.placeholder,
      required this.editingController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: editingController,
        textAlign: TextAlign.start,
        autocorrect: false,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefix: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                size: 16,
              )),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
