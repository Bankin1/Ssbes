import 'package:flutter/material.dart';

class BoolSwitch extends StatefulWidget{
  final String text;
  final bool initValue;

  const BoolSwitch({super.key, required this.text, required this.initValue});
  @override
  State<StatefulWidget> createState() => BoolSwitchState();

}

class BoolSwitchState extends State<BoolSwitch>{

  bool _value = false;
  bool get value => _value;

  @override
  void initState(){
    super.initState();
    _value = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(widget.text),

          const SizedBox(width: 10),

          Switch(
            value: _value,
            onChanged: (bool newValue){
              setState(() {
                _value = newValue;
              });
            },
          )
        ],
      ),
    );
  }

}