import 'package:flutter/cupertino.dart';

class BoolDescriptionWidget extends StatelessWidget{
  final String text;
  final bool? value;

  const BoolDescriptionWidget({super.key,
    required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$text: "),
        if(value != null)
          Text(value! ? "Да!" : "Нет(")
      ],
    );
  }
}