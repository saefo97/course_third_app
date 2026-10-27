import 'package:course_third_app/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/bg1.jpg",

        ),
        fit: .cover
        ),
      ),
      child: Scaffold(

        backgroundColor: Colors.transparent,
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.7)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text("Sign In",style: TextStyle(
                
                    fontFamily: 'times',
                    fontSize: 75,fontWeight: FontWeight.bold),),
                CustomTextField(labelText: "Email",),
                CustomTextField(labelText: "Password",),
              ],
            ),
          ),
        ],
      ),
    ),

      ),
    );
  }
}

