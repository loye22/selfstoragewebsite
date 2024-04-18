import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class Button extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  Color color;
  double width ;
  double height ;
  EdgeInsets pdding ;
  bool lightMode ;

  Button({Key? key, required this.onTap, required this.text, this.color = const Color(0xFFFBAB12),this.lightMode =false ,this.width = 0.0 , this.height = 0.0 , this.pdding = const EdgeInsets.all(8.0) })
       : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}




class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: widget.pdding,
      child: GestureDetector(
        onTap: widget.onTap, // Fix the variable name here
        child: Container(
          width:  widget.width == 0 ?  96 : widget.width,
          height:    widget.height == 0 ?  40 : widget.height,
          decoration: BoxDecoration(
            color: widget.lightMode ?  Colors.white :  widget.color,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Center(child: Text(widget.text, style: TextStyle(color:widget.lightMode ? staticVar.themeColor :  Colors.white , fontSize: 14))),
        ),
      ),
    );
  }
}