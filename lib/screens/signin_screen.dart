import 'package:course_third_app/components/background_decoration.dart';
import 'package:course_third_app/components/fade_animation.dart';
import 'package:course_third_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../auth/authentication_services.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var _key = GlobalKey<FormState>();

  bool isLoading = false;

  signIn() async {
    if (_key.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      String? result = await AuthService().signIn(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      if (result == null) {
        setState(() {
          isLoading = false;
        });

        // TODO: Go to somewhere
      } else {
        setState(() {
          isLoading = false;
        });
        showError(result);
      }
    }
  }

  showError(String result) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        content: Text(result, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundDecoration(
      child: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.75),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    FadeAnimation(
                      delay: 250,
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: 'times',
                          fontSize: 75,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FadeAnimation(
                      delay: 500,
                      child: CustomTextField(
                        labelText: "Email",
                        controller: emailController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter an Email";
                          }
                        },
                      ),
                    ),
                    FadeAnimation(
                      delay: 750,
                      child: CustomTextField(
                        labelText: "Password",
                        controller: passwordController,
                        isPassword: true,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Enter a Password";
                          } else if (val.length < 6) {
                            return "Enter a Stronger Password";
                          }
                        },
                      ),
                    ),
                    FadeAnimation(
                      delay: 1000,
                      child: CustomButton(
                        label: "Sign In",
                        isLoading: isLoading,
                        onPressed: () {
                          signIn();
                        },
                      ),
                    ),
                    FadeAnimation(
                      delay: 1250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an Account?",
                            style: TextStyle(fontFamily: 'times'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up Now",
                              style: TextStyle(fontFamily: 'times'),
                            ),
                          ),
                        ],
                      ),
                    ),
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
