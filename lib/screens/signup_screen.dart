
import 'package:course_third_app/components/background_decoration.dart';
import 'package:course_third_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return BackgroundDecoration(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.75)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text("Sign Up",style: TextStyle(

                    fontFamily: 'times',
                    fontSize: 75,fontWeight: FontWeight.bold),),
                CustomTextField(labelText: "Email",),
                CustomTextField(labelText: "Password",),
                CustomTextField(labelText: "Confirm Password",),
                CustomButton(label: "Sign Up",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an Account?"),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                    }, child: Text("Sign In"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

