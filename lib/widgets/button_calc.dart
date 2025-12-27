import 'package:flutter/material.dart';
import 'package:bmi_calculator/detials_page.dart';

class ButtonCalc extends StatelessWidget {
  const ButtonCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetialsPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffE83D67),
        ),
        width: 360,
        height: 100,
        child: Center(child: Text("Calculate", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 32,fontWeight: FontWeight.w300 , ))),

      ),
    );
  }
}
