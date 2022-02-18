import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String routeName;
  final String question;
  final String solution;
  const Labels(
      {Key? key,
      required this.routeName,
      required this.question,
      required this.solution})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, routeName),
            child: Text(
              solution,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
