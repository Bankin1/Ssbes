import 'package:flutter/material.dart';

class BoolEditWidget extends StatefulWidget{
  final String text;
  final bool initValue;

  const BoolEditWidget({super.key, required this.text, required this.initValue});
  @override
  State<StatefulWidget> createState() => BoolEditWidgetState();

}

class BoolEditWidgetState extends State<BoolEditWidget>{

  bool _value = false;
  bool get value => _value;

  @override
  void initState(){
    super.initState();
    _value = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SizedBox(
        child: Row(
          children: [
            Expanded(child: Center(child: Text(widget.text))),
      
            const VerticalDivider(thickness: 1, color: Colors.black),
      
            Expanded(
              child: Switch(
                value: _value,
                onChanged: (bool newValue){
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

}