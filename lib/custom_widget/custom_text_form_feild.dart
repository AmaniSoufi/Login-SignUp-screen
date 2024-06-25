import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomTextFormFeild({required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 173, 218, 255),
              filled: true,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white, fontSize: 13),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
                size: 15,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.white))),
        ),
      ),
    );
  }
}
