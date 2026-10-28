
import 'package:course_third_app/components/background_decoration.dart';
import 'package:course_third_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var _key = GlobalKey<FormState>();
  signUp(){
    print(emailController.text.trim());

    if(_key.currentState!.validate()){
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundDecoration(
      child: SingleChildScrollView(
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
                    Text("Sign Up",style: TextStyle(
        
                        fontFamily: 'times',
                        fontSize: 75,fontWeight: FontWeight.bold),),
                    CustomTextField(labelText: "Email",
                      controller: emailController,
                      validator: (val) {
                        if(val == null || val.isEmpty){
                          return "Enter an Email";
                        }
                      },
                    ),
                    CustomTextField(labelText: "Password",
                      controller: passwordController,
                      isPassword: true,
                      validator: (val) {
                        if(val == null || val.isEmpty){
                          return "Enter a Password";
                        }else if(val.length <6){
                          return "Enter a Stronger Password";
                        }
        
        
                      },
                    ),         CustomTextField(labelText: "Confirm Password",
                      controller: confirmPasswordController,
                      isPassword: true,
                      validator: (val) {
                        if(passwordController.text != confirmPasswordController.text){
                          return "Password don't match";
                        }else if(val==null || val.length <6){
                          return "Enter a Stronger Password";
                        }
        
        
                      },
                    ),
                    CustomButton(label: "Sign Up",
                      onPressed: (){
                        signUp();
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have an Account?",style: TextStyle(
                            fontFamily: 'times'
                        ),),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        }, child: Text("Sign In Now",style: TextStyle(
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
      ),
    );
  }
}

