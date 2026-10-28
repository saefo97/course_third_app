import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String? Function(String?)? validator;
  final String labelText;
  bool? isPassword;
  TextEditingController? controller;
  CustomTextField({
    super.key,
    this.validator,
    required this.labelText,
    this.isPassword = false,
    this.controller
  });
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller ,
      obscureText: widget.isPassword! ? isHidden : false,
      validator: widget.validator,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'times'),
        labelText: widget.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.purple.shade300, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.purple.shade600, width: 3),
        ),



        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.red.shade300, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red.shade600, width: 3),
        ),


        suffixIcon: widget.isPassword!
            ? IconButton(
                icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                color: Colors.purple.shade600,
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
              )
            : null,
      ),
    );
  }
}
