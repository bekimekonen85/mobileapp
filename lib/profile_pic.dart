// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profile_pic extends StatelessWidget{
  const profile_pic({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('images/Bb.jpg'),
            fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}