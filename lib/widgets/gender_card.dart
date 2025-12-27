import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String? gender ;
 final IconData? icon;
 final void Function()? onTap;
 final Color? color;

  const GenderCard({super.key,required this.gender,required this.icon, this.onTap, this.color});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: 150,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(icon, size: 100, color: Color(0xffFFFFFF)),
                Text(
                  "$gender",
                  style: TextStyle(
                    color: Color(0xff8B8C9E),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
