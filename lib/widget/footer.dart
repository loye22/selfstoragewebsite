import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/privacyPage.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteHomePage.dart';
import 'dart:html' as html;

import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';

class MyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height:staticVar.isItWebPlatform(context) ?  staticVar.golobalHigth(context) * .6 :staticVar.golobalHigth(context) * 1.5,
        color: Color(0xFF18181B),
        padding:staticVar.isItWebPlatform(context) ? EdgeInsets.all(110) : EdgeInsets.all(30)  ,
        child: Flex(
          direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
          mainAxisAlignment: staticVar.isItWebPlatform(context) ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Self Storage',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 8.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(webSiteHomePage.routeName);
                    },
                    child: Text(
                      'Acasă',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      html.window.open('https://firebasestorage.googleapis.com/v0/b/selfstorage-de099.appspot.com/o/docs%2FTermeni.pdf?alt=media&token=c1a3a972-74ce-467a-84ac-c456d32a0f9b', 'new tab');

                    },
                    child: Text(
                      'Termeni',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Asigurare',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(privacyPage.routeName);
                    },
                    child: Text(
                      'Confidențialitate',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Locații',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 8.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Poligrafiei',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contactează-ne',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      copyTextWithFeedback(text: '0372933896' , feedbackText: '0372933896 copied to clipboard!',),  copyTextWithFeedback(text:  'contact@selfstorage.ro' , feedbackText: 'contact@selfstorage.ro copied to clipboard!', ),

                    ],
                  ),
                ],
              ),
            ),
            Expanded (
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle Facebook button pressed
                          html.window.open('https://www.facebook.com/selfstorage.romania', 'new tab');

                        },
                        icon: Icon(Icons.facebook),
                        iconSize: 24.0,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle Instagram button pressed
                          html.window.open('https://www.instagram.com/selfstorage.ro/', 'new tab');

                        },
                        icon: Icon(FontAwesomeIcons.instagram),
                        iconSize: 24.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


