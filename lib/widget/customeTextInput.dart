
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class customeTextInput extends StatefulWidget {
  final TextEditingController controller ;
  final String label ;
  final bool IsItPhoneInput ;
   const customeTextInput({super.key, required this.controller, required this.label, this.IsItPhoneInput =  false});

  @override
  State<customeTextInput> createState() => _customeTextInputState();
}

class _customeTextInputState extends State<customeTextInput> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              color: Colors.black, // --tw-ring-color
              fontWeight: FontWeight.w500,
              fontSize: 14.0, // Font size: .875rem
              letterSpacing: -0.0125, // --heading-letter-spacing
            ),
          ),
          SizedBox(height: 2.0), // Adjust spacing if needed
          Container(
            height: staticVar.fullwidth (context) * .04,
            width:  staticVar.fullwidth(context) * .3,
            decoration: BoxDecoration(
              color: Colors.white, // --c-white
              borderRadius: BorderRadius.circular(8.0), // --button-border-radius
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05), // --tw-shadow
                  blurRadius: 2.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
              child: TextField(
                controller: widget.controller ,
                textAlign: TextAlign.left,
                maxLength:widget.IsItPhoneInput ? 10 :  20,
                decoration: InputDecoration(
                  hintText: "0712 034 567",
                  prefix:widget.IsItPhoneInput ?  Padding(padding: EdgeInsets.all(8.0) , child: Image.asset("assets/flag.png"),) : null ,
                  contentPadding: EdgeInsets.symmetric(vertical: 5.0), // Add padding
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color(0xFF18181B), // --c-black
                  fontSize: 14.0, // Font size: .875rem
                  fontWeight: FontWeight.w500, // Font weight: 500
                  height: 1.5, // Line height: 1.5rem
                ),
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}
