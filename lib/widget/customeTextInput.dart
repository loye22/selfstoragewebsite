import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class customeTextInput extends StatefulWidget {
  final TextEditingController controller;

  final List<TextEditingController> addressTextController ;

  final String label;

  final bool IsItPhoneInput;

  final bool isItEmail ;

  final bool disableCenter ;

  const customeTextInput(
      {super.key,
      required this.controller,
      required this.label,
      this.IsItPhoneInput = false,
        this.addressTextController = const [] ,
        this.isItEmail = false ,
        this.disableCenter = false

      });

  @override
  State<customeTextInput> createState() => _customeTextInputState();
}

class _customeTextInputState extends State<customeTextInput> {
  @override
  Widget build(BuildContext context) {
    if(widget.disableCenter)
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: staticVar.fullwidth(context) * .3,
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
              SizedBox(
                width: staticVar.fullwidth(context) * .35,
                height: staticVar.fullwidth(context) * 0.040,
                child: TextField(
                  controller: widget.controller,
                  textAlign: TextAlign.left,
                  maxLength: widget.IsItPhoneInput ? 10 : (widget.isItEmail ? 40 : 30),
                  inputFormatters: widget.IsItPhoneInput
                      ? <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]')),
                    // Allow only numbers
                  ]
                      : null,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // Border when the TextField is not focused
                      borderRadius: BorderRadius.circular(5.0),
                      // Make it circular
                      borderSide: BorderSide(
                          color: Colors.grey), // Gray border color
                    ),
                    hoverColor: Colors.white,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 12.0),
                    hintText:
                    widget.IsItPhoneInput ? "0712 034 567" : null,
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color(0xFF18181B), // --c-black
                    fontSize: 14.0, // Font size: .875rem
                    fontWeight: FontWeight.w500, // Font weight: 500
                    //  height: 1.5, // Line height: 1.5rem
                  ),
                ),
              ),
            ],
          ),
        ),
      );

    return widget.addressTextController.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: staticVar.fullwidth(context) * .3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: SizedBox(
                      width: staticVar.fullwidth(context) * .35,
                      height: staticVar.fullwidth(context) * 0.040,
                      child: TextField(
                        controller: widget.addressTextController[0],
                        textAlign: TextAlign.left,
                        maxLength: widget.IsItPhoneInput ? 10 : 20,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            // Border when the TextField is not focused
                            borderRadius: BorderRadius.circular(5.0),
                            // Make it circular
                            borderSide: BorderSide(color: Colors.grey), // Gray border color
                          ),
                          hoverColor: Colors.white,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          hintText: "Adresă" ,
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color(0xFF18181B), // --c-black
                          fontSize: 14.0, // Font size: .875rem
                          fontWeight: FontWeight.w500, // Font weight: 500
                          //  height: 1.5, // Line height: 1.5rem
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: SizedBox(
                      width: staticVar.fullwidth(context) * .35,
                      height: staticVar.fullwidth(context) * 0.040,
                      child: TextField(
                        controller: widget.addressTextController[1],
                        textAlign: TextAlign.left,
                        maxLength: widget.IsItPhoneInput ? 10 : 20,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            // Border when the TextField is not focused
                            borderRadius: BorderRadius.circular(5.0),
                            // Make it circular
                            borderSide: BorderSide(color: Colors.grey), // Gray border color
                          ),
                          hoverColor: Colors.white,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          hintText: "Oraș / Oraș" ,
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color(0xFF18181B), // --c-black
                          fontSize: 14.0, // Font size: .875rem
                          fontWeight: FontWeight.w500, // Font weight: 500
                          //  height: 1.5, // Line height: 1.5rem
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: SizedBox(
                      width: staticVar.fullwidth(context) * .35,
                      height: staticVar.fullwidth(context) * 0.040,
                      child: TextField(
                        controller: widget.addressTextController[2],
                        textAlign: TextAlign.left,
                        maxLength: widget.IsItPhoneInput ? 10 : 20,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            // Border when the TextField is not focused
                            borderRadius: BorderRadius.circular(5.0),
                            // Make it circular
                            borderSide: BorderSide(color: Colors.grey), // Gray border color
                          ),
                          hoverColor: Colors.white,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          hintText: "Cod poștal" ,
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color(0xFF18181B), // --c-black
                          fontSize: 14.0, // Font size: .875rem
                          fontWeight: FontWeight.w500, // Font weight: 500
                          //  height: 1.5, // Line height: 1.5rem
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: SizedBox(
                      width: staticVar.fullwidth(context) * .35,
                      height: staticVar.fullwidth(context) * 0.040,
                      child: TextField(
                        controller: widget.addressTextController[3],
                        textAlign: TextAlign.left,
                        maxLength: widget.IsItPhoneInput ? 10 : 20,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            // Border when the TextField is not focused
                            borderRadius: BorderRadius.circular(5.0),
                            // Make it circular
                            borderSide: BorderSide(color: Colors.grey), // Gray border color
                          ),
                          hoverColor: Colors.white,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          hintText: "Romanina" ,
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color(0xFF18181B), // --c-black
                          fontSize: 14.0, // Font size: .875rem
                          fontWeight: FontWeight.w500, // Font weight: 500
                          //  height: 1.5, // Line height: 1.5rem
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: staticVar.fullwidth(context) * .3,
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
                    SizedBox(
                      width: staticVar.fullwidth(context) * .35,
                      height: staticVar.fullwidth(context) * 0.040,
                      child: TextField(
                        controller: widget.controller,
                        textAlign: TextAlign.left,
                        maxLength: widget.IsItPhoneInput ? 10 : (widget.isItEmail ? 40 : 30),
                        inputFormatters: widget.IsItPhoneInput
                            ? <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                // Allow only numbers
                              ]
                            : null,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            // Border when the TextField is not focused
                            borderRadius: BorderRadius.circular(5.0),
                            // Make it circular
                            borderSide: BorderSide(
                                color: Colors.grey), // Gray border color
                          ),
                          hoverColor: Colors.white,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          hintText:
                              widget.IsItPhoneInput ? "0712 034 567" : null,
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color(0xFF18181B), // --c-black
                          fontSize: 14.0, // Font size: .875rem
                          fontWeight: FontWeight.w500, // Font weight: 500
                          //  height: 1.5, // Line height: 1.5rem
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
