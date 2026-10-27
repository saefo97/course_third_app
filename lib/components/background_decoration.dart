import 'package:course_third_app/components/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class BackgroundDecoration extends StatelessWidget {
  final Widget child;
  const BackgroundDecoration({super.key, required this.child});

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
      child: child,
    ),

      ),
    );
  }
}
