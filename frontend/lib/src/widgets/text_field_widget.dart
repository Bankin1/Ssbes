import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget{
  final String text;
  final dynamic initValue;
  final TextInputType valueType;

  const TextFieldWidget({
    super.key,
    required this.text,
    required this.initValue,
    required this.valueType
  });

  @override
  State<StatefulWidget> createState() => TextFieldWidgetState();
}

class TextFieldWidgetState extends State<TextFieldWidget>{

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
      child: Row(
        children: [
          Text(widget.text),

          const SizedBox(width: 10),

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
    );
  }

}