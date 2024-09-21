import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/description.dart';

class DescriptionWidget extends StatelessWidget{
  final Description description;

  const DescriptionWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tasks: ${description.whatIDo}")
          ],
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Stack: ${description.stackOfTechnology}")
          ],
        ),

        const SizedBox(height: 10)
      ],
    );
  }

}