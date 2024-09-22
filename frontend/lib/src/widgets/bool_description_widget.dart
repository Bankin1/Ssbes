import 'package:flutter/material.dart';

class BoolDescriptionWidget extends StatelessWidget{
  final String text;
  final bool? value;

  const BoolDescriptionWidget({super.key,
    required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        color: Theme.of(context).colorScheme.primaryContainer
      ),

      padding: const EdgeInsets.all(10),

      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Align(alignment: Alignment.centerLeft,
                    child: Text(text))),

            const VerticalDivider(thickness: 1, color: Colors.black,),

            if(value != null)
              Expanded(child: Align(alignment: Alignment.centerRight,
                  child: Text(value! ? "Да!" : "Нет(")))
            else
              const Spacer()
          ],
        ),
      ),
    );
  }
}