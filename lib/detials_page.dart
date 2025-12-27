import 'package:flutter/material.dart';


class DetialsPage extends StatelessWidget {
  const DetialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C2135),
        appBar: AppBar(
          backgroundColor: Color(0xff24263B),
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
    );
  }
}
