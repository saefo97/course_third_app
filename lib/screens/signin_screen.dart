
import 'package:course_third_app/components/background_decoration.dart';
import 'package:course_third_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class SignInScreen extends StatelessWidget{

  var _key = GlobalKey<FormState>();
  signIn(){
    if(_key.currentState!.validate()){

    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundDecoration(
      child: Form(
        key: _key,
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
                  Text("Sign In",style: TextStyle(

                      fontFamily: 'times',
                      fontSize: 75,fontWeight: FontWeight.bold),),
                  CustomTextField(labelText: "Email",
                  validator: (val) {
                    if(val == null || val.isEmpty){
                      return "Enter an Email";
                    }
                  },
                  ),
                  CustomTextField(labelText: "Password",
                    validator: (val) {
                      if(val == null || val.isEmpty){
                        return "Enter a Password";
                      }
                    },
                  ),
                  CustomButton(label: "Sign In",
                  onPressed: (){
                    signIn();
                  },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an Account?",style: TextStyle(
                        fontFamily: 'times'
                      ),),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      }, child: Text("Sign Up Now",style: TextStyle(
                          fontFamily: 'times'
                      ),))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

