import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'dart:html' as html;

import 'package:self_storage_web_site/widget/uniteCustomerCard.dart';

class webSiteUnitsPage extends StatefulWidget {
  static final routeName = "/webSiteUnitsPage";

  const webSiteUnitsPage({super.key});

  @override
  State<webSiteUnitsPage> createState() => _webSiteUnitsPageState();
}

class _webSiteUnitsPageState extends State<webSiteUnitsPage> {
  List<Map<String, dynamic>> boxes = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUnitsFromFirestore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: staticVar.golobalWidth(context) * .07,
                  top: staticVar.golobalWidth(context) * .04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    width: staticVar.golobalWidth(context) * .6,
                    height: staticVar.golobalHigth(context)* 2 ,
                    padding: EdgeInsets.all(16.0),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Self Storage în București",
                            style: GoogleFonts.roboto(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20.0),
                          Flexible(
                            child: Text(
                              'Vă punem la dispoziție spații de depozitare de diverse dimensiuni, perfect securizate, pentru a\nsatisface nevoile de stocare atât ale afacerilor, cât și ale persoanelor fizice.',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Flexible(
                            child: Text(
                              '• Serviciile de mentenanță și utilități sunt incluse în prețul chiriei.',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '• Garanția, reprezentând contravaloarea unei luni de chirie, se achita la preluarea spațiului.',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Imagini informative ale spațiilor de depozitare',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 800,
                            height: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            child: SingleChildScrollView(
                                child: Column(
                                  children: this.boxes.map((e) {
                                    return uniteCustomerCard(
                                      imageUrl: e['imageUrl'] ?? "404",
                                      unitName: e['unitTypeName'] ?? "404",
                                      description: e['description'] ?? "404",
                                      price: e['price'] ?? "404",
                                      onPressed: () {
                                        // Add your onPressed action here
                                      },
                                    );
                                  }).toList(),
                                )),
                          ),


                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: staticVar.golobalWidth(context) * .5,
                    //    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: staticVar.golobalWidth(context) * .3,
                          height: staticVar.golobalHigth(context) * .6,
                          decoration: BoxDecoration(
                              //    border: Border.all(color: Colors.black ) , borderRadius: BorderRadius.circular(30)
                              ),
                          child: Column(children: [
                            Container(
                                height: staticVar.golobalHigth(context) * .5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/m8.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                )),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Flexible(
                                        child: Text(
                                      "Ai o întrebare? Sună-ne",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                                    copyTextWithFeedback(
                                      text: "+40372933896",
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30)),
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Locație',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Bld. Poligrafiei nr. 1B, București, 013704'),
                                  TextButton(
                                    onPressed: () {
                                      html.window.open(
                                          "https://www.google.com/maps/dir/?api=1&destination=Bld.+Poligrafiei+nr.+1B%2C+%2C+Bucure%C8%99ti%2C+013704",
                                          'Location');
                                    },
                                    child: Text('Vezi direcții'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Acces',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Acces ușor și sigur la boxe și depozite.\nLuni - Duminică\n6:30a.m - 11:00p.m'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.info),
                              SizedBox(width: 8.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bine de știut',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Sisteme supraveghere 24/7\nProgramul cu publicul este de luni pana vineri, orele 7.00 - 19.00\nAccesul cu card de luni pana duminica orele 6.30 - 23.00\nTemperatură optimă'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> fetchUnitsFromFirestore() async {
    List<Map<String, dynamic>> unitsList = [];
    try {
      QuerySnapshot unitsSnapshot =
          await FirebaseFirestore.instance.collection('units').where('status', isEqualTo: 'available').get();
      unitsSnapshot.docs.forEach((DocumentSnapshot document) {
        Map<String, dynamic> unit = document.data() as Map<String, dynamic>;
          unitsList.add(unit);
      });
      this.boxes = unitsList;
      return unitsList;
    } catch (e) {
      print("Error fetching units: $e");
      return [];
    }
  }
}
