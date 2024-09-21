import 'package:flutter/cupertino.dart';

class StringDescriptionWidget extends StatelessWidget{
  final String text;
  final String? value;

  const StringDescriptionWidget({super.key,
    required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$text: "),
        if(value != null)
          Text(value!)
      ],
    );
  }
}