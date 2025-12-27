import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.sixteen_mp,color:  Colors.white , size: 40,),
        title: Text("Appointments", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.list_sharp, color: Colors.white, size: 40,),
        ],
      ),
      body: Padding(padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Wednesday, 22 May 2019", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rana Wael", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                children: [
                  Icon(Icons.alarm, color: Colors.grey,),
                  SizedBox(width: 3,),
                  Text("10:50")
                ],
              ),
              Divider(color: Colors.grey, thickness: 1,),
              Text("Dima Mohammed", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                children: [
                  Icon(Icons.alarm, color: Colors.grey,),
                  SizedBox(width: 3,),
                  Text("13:00")
                ],
              ),
              Divider(color: Colors.grey, thickness: 1,),
              Text("Azza Wael", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                children: [
                  Icon(Icons.alarm, color: Colors.grey,),
                  SizedBox(width: 3,),
                  Text("12:30")
                ],
              ),
              Divider(color: Colors.grey, thickness: 1,),
              Text("Zahra Sameh", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                children: [
                  Icon(Icons.alarm, color: Colors.grey,),
                  SizedBox(width: 3,),
                  Text("15:20")
                ],
              ),
              Divider(color: Colors.grey, thickness: 1,),
              Text("Youssef Reda", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.grey,),
                      SizedBox(width: 3,),
                      Text("20:00")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.close, color: Colors.red, size: 30),
                    ],
                  ),

                ],
              ),
              Divider(color: Colors.grey, thickness: 1,),
              Text("Mohammed Sameh", style: TextStyle(color: Colors.grey, fontSize: 14),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.grey,),
                      SizedBox(width: 3,),
                      Text("03:00"),
                    ],
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check, color: Colors.green, size: 20),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),),
      
    );
  }
}
