import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const ButtonCard({
    super.key,
    required this.title,
    required this.onPressed,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Colors.grey[800],
      child: SizedBox(
        width: width,
        height: height,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
