import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children:[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue , Colors.pinkAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                ),
                child: Icon(Icons.umbrella, color: Colors.red,size: 50,),
              ),
              SizedBox(height: 30,),
              Text("This is a Simple text", style: TextStyle(color: Colors.white, fontSize: 20),),
            ],
          ),
        ],
      ),
    );
  }
}
