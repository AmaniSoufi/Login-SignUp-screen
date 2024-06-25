import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  final Image? image;

  customButton(
      {required this.text, required this.color, this.icon, this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.03;

    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: MaterialButton(
        color: color,
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 4.0),
            ],
            if (image != null) ...[
              Container(
                height: height,
                width: height,
                child: image,
              ),
              SizedBox(width: 4.0),
            ],
            Flexible(
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
