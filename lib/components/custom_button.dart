import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
 final void Function()? onPressed;
  const CustomButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 56,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [
            Color(0XFFE97AF8),
            Color(0XFF53215F),


          ],
          begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          )
        ),
        child: MaterialButton(onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12)
          ),
        child: Text(label,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,fontFamily: 'times'),),
        
        ),
      ),
    );
  }
}
