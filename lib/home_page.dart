import 'package:bmi_calculator/widgets/card_info.dart';
import 'package:flutter/material.dart';
import 'widgets/gender_card.dart';
import 'widgets/button_calc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  bool isFemale = false;
  int height =50;
  int weight = 30;
  int age = 20;
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


      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
        child:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //gender Row:
              Row(
                children: [
                  GenderCard(gender: "Male", icon: Icons.male,color:isMale?Colors.blue:  Color(0xff24263B),
                  onTap: (){
                     setState(() {
                       isFemale = false;
                       isMale = true;
                     });
                  },),

                     SizedBox(width: 9),
                   GenderCard(gender: "Female",icon: Icons.female,color:isFemale?Colors.pink: Color(0xff24263B),
                   onTap: (){
                     setState(() {
                       isMale = false;
                       isFemale = true;
                     });
                   },),
                ],
              ),
              SizedBox(height: 25),


               //height container:
          Container(
            width: 319,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff333244),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: height.toString(),
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "cm",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                Slider(
                  min: 50,
                  max: 300,
                  activeColor: Color(0xffE83D67),
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height=value.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
              SizedBox(height: 18),


              //card info:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardInfo(txt: "Weight", number: weight ,
                    increaseOnTap: (){
                    setState(() {
                      weight++;
                    });
                    },
                  decreaseOnTap: (){
                    if(weight>30){
                      setState(() {
                        weight--;
                      });
                    }
                  },),
                  CardInfo(txt: "Age", number: age,
                  increaseOnTap: (){
                    setState(() {
                      age++;
                    });
                  },
                  decreaseOnTap: (){
                    if(age>20){
                      setState(() {
                        age--;
                      });
                    }
                  },)
                ],
              ),
              SizedBox(height: 20),


              ButtonCalc(),
            ],
          ),
        ),
      ),
    );
  }
}
