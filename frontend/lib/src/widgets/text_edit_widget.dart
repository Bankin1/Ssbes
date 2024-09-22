import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextEditWidget extends StatefulWidget{
  final String text;
  final dynamic initValue;
  final TextInputType valueType;

  const TextEditWidget({
    super.key,
    required this.text,
    required this.initValue,
    required this.valueType
  });

  @override
  State<StatefulWidget> createState() => TextEditWidgetState();
}

class TextEditWidgetState extends State<TextEditWidget>{

  final TextEditingController _controller = TextEditingController();
  String get value => _controller.text;

  TextInputFormatter _getFormatter(){
    TextInputFormatter formatter = widget.valueType == TextInputType.number
        ? FilteringTextInputFormatter.digitsOnly
        : FilteringTextInputFormatter.allow(RegExp("."));
    return formatter;
  }

  @override
  void initState(){
    super.initState();
    _controller.text = widget.initValue != null
        ? widget.initValue.toString()
        : "";
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IntrinsicHeight(
        child: Row(
        
          children: [
            Expanded(child: Center(child: Text(widget.text))),
        
            const VerticalDivider(thickness: 1, color: Colors.black),
        
            Expanded(
              child: TextField(
                maxLines: null,
                inputFormatters: [_getFormatter()],
                keyboardType: widget.valueType,
                decoration: InputDecoration(
                  hintText: widget.text
                ),
                controller: _controller,
              ),
            )
          ],
        ),
      ),
    );
  }

}