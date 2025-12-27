import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String txt;
  final int number;
  final  void Function()? increaseOnTap;
  final  void Function()? decreaseOnTap;

  const CardInfo({super.key, required this.txt, required this.number, this.increaseOnTap, this.decreaseOnTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 155,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$txt",
                style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),),
              Text(number.toString(), style: TextStyle(color: Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.small(onPressed: decreaseOnTap,
                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Icon(Icons.remove, color: Color(0xffFFFFFF),), ),


                  FloatingActionButton.small(onPressed: increaseOnTap,
                    backgroundColor: Color.fromARGB(255, 119, 118, 118),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    child: Icon(Icons.add, color: Color(0xffFFFFFF),),
                  ),




                ],
              )
            ]
        )
    );
  }
}
