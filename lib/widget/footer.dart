import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class MyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: staticVar.golobalHigth(context) * .6,
        color: Color(0xFF18181B),
        padding: EdgeInsets.all(110),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    onPressed: () {},
                    child: Text(
                      'Acasă',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contul tău',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '0372933896',
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'contact@selfstorage.ro',
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded (
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Urmărește-ne',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle Facebook button pressed
                        },
                        icon: Icon(Icons.facebook),
                        iconSize: 24.0,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle Instagram button pressed
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


