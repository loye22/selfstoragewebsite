import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';
import 'dart:html' as html;


class SidebarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Flex(
              direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardList(),
                  Container(
                    width:staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .40 : staticVar.fullwidth(context),

                    // Adjust the width as needed
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Cta(),
                        IconList(),
                      ],
                    ),
                  ),
                ],
              ),

          );
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(backgroundColor: Colors.white),
      child: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width:staticVar.isItWebPlatform(context)
              ? staticVar.golobalWidth(context)* .65
              : staticVar.fullwidth(context) + 100 ,
          height: staticVar.golobalHigth(context) * .55,
          //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Poligrafiei",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      Button(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(webSiteUnitsPage.routeName);
                        },
                        text: "Alege boxa",
                        pdding: EdgeInsets.zero,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: .5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      staticVar.isItWebPlatform(context) ?  Expanded(
                        child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: staticVar.golobalWidth(context) * .15,
                            height: staticVar.golobalHigth(context) * .2,
                            child: Image.asset(
                              'assets/m2.jpg',
                              fit: BoxFit.cover,
                            ),
                        ),
                      ) : SizedBox.shrink(),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adresă',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Bld. Poligrafiei nr. 1B\nBucurești\n013704',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 8.0),
                            TextButton(
                              child: Text(
                                'Vezi direcții',
                                style: TextStyle(
                                    color: staticVar.themeColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                html.window.open(
                                    "https://www.google.com/maps/dir/?api=1&destination=Bld.+Poligrafiei+nr.+1B%2C+%2C+Bucure%C8%99ti%2C+013704",
                                    'new tab');
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Telefon',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            copyTextWithFeedback(text: '0372 933 896'),
                            SizedBox(height: 16.0),
                            Text(
                              'Tip de acces',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Lacăt',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Cta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .40 : staticVar.fullwidth(context),
      height: staticVar.golobalHigth(context) * .35,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Rezervă online',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 1.0),
          Flexible(
            child: Text(
              style:
                  GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white)),
              'În mai puțin de 3 minute poți rezerva un spațiu de depozitare pentru nevoile tale sau ale afacerii tale. Simplu, rapid și fără riscuri!',
            ),
          ),
        ],
      ),
    );
  }
}

class IconList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Bine de știut',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        ListTile(
          leading: Icon(
            Icons.check,
            color: staticVar.themeColor,
          ),
          title: Text('Sisteme supraveghere 24/7'),
        ),
        ListTile(
          leading: Icon(Icons.check, color: staticVar.themeColor),
          title: Text(
              'Programul cu publicul este de luni pana vineri, orele 7.00 - 15.00'),
        ),
        ListTile(
          leading: Icon(Icons.check, color: staticVar.themeColor),
          title: Text(
              'Accesul cu card de luni pana duminica orele 6.30 - 23.00'),
        ),
        ListTile(
          leading: Icon(Icons.check, color: staticVar.themeColor),
          title: Text('Temperatură optimă'),
        ),
      ],
    );
  }
}
