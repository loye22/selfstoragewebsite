import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/uniteReserve.dart';
import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';
import 'package:self_storage_web_site/widget/reviews.dart';
import 'dart:html' as html;
import 'package:self_storage_web_site/widget/uniteCustomerCard.dart';
import 'package:self_storage_web_site/widget/whyShouldYouHireUs.dart';



class webSiteUnitsPage extends StatefulWidget {
  static final routeName = "/webSiteUnitsPage";
  const webSiteUnitsPage({super.key});
  @override
  State<webSiteUnitsPage> createState() => _webSiteUnitsPageState();
}

class _webSiteUnitsPageState extends State<webSiteUnitsPage> {
  List<Map<String, dynamic>> boxes = [];
  List<Map<String, dynamic>> unitsType = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4F4F5),
        body: Animate(
          effects: [FadeEffect(duration: Duration(milliseconds: 700))],
          child: Container(
            //  decoration: BoxDecoration(border: Border.all(color: Colors.red , width: 2)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  SizedBox(
                    height: 50,
                  ),
                  this.isLoading
                      ? Center(child: staticVar.loading())
                      : Animate(
                          effects: [
                            FadeEffect(duration: Duration(milliseconds: 700))
                          ],
                          child: Padding(
                            padding:staticVar.isItWebPlatform(context) ?  EdgeInsets.only(
                                left: staticVar.golobalWidth(context) * .07,
                                top: staticVar.golobalWidth(context) * .04) : EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment: staticVar.isItWebPlatform(context) ? MainAxisAlignment.end : MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                   // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                    width:staticVar.isItWebPlatform(context) ? staticVar.golobalWidth(context) * .6 : staticVar.fullwidth(context)*.95,
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Self Storage în București",
                                          style: GoogleFonts.roboto(
                                              fontSize: 48,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 20.0),
                                        Text(
                                          'Vă punem la dispoziție spații de depozitare de diverse dimensiuni, perfect securizate, pentru a\nsatisface nevoile de stocare atât ale afacerilor, cât și ale persoanelor fizice.',
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                        SizedBox(height: 20.0),
                                        Text(
                                          '• Serviciile de mentenanță și utilități sunt incluse în prețul chiriei.',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '• Garanția, reprezentând contravaloarea unei luni de chirie, se achita la preluarea spațiului.',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Imagini informative ale spațiilor de depozitare',
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ...this.boxes.map((e) {
                                          return uniteCustomerCard(
                                            imageUrl: findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["image"] ?? "404",
                                            unitName: e['unitTypeName'] ?? "404",
                                            description: findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["sizeDescription"] ?? "404",
                                            price: findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["priceHistory"]?.last?["price"] ?? "404",
                                            onPressed: () {
                                              print(findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["sellingPoints"] );
                                              // Add your onPressed action here
                                              Navigator.of(context).pushNamed(
                                                  uniteReserve.routeName,
                                                  arguments: {
                                                    "sellingPoints" :   findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["sellingPoints"] ?? "404",
                                                    "price" :findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["priceHistory"]?.last?["price"] ?? "404",
                                                    "description" : findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["sizeDescription"] ?? "404" ,
                                                    "uniteData": e,
                                                    "img": findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["image"] ?? "404" ,
                                                    "dimensions" : {
                                                      "width":findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["unitWidth"]?? "404Notfound" ,
                                                      "height": findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["unitHeight"]?? "404Notfound",
                                                      "length": findUnitById(units: this.unitsType, id: e["unitTypeID"] ?? "")?["unitLength"]?? "404Notfound"}

                                                  });
                                            },
                                          );
                                        }).toList()
                                      ],
                                    ),
                                  ),
                                  staticVar.isItWebPlatform(context) ?  Container(
                                    width: staticVar.golobalWidth(context) * .5,
                                    //    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:
                                              staticVar.golobalWidth(context) * .3,
                                          height:
                                              staticVar.golobalHigth(context) * .6,
                                          decoration: BoxDecoration(
                                              //    border: Border.all(color: Colors.black ) , borderRadius: BorderRadius.circular(30)
                                              ),
                                          child: Column(children: [
                                            Container(
                                                height: staticVar
                                                        .golobalHigth(context) *
                                                    .5,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(30),
                                                      topRight:
                                                          Radius.circular(30)),
                                                  image: DecorationImage(
                                                    image:
                                                        AssetImage('assets/m8.jpg'),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    )),
                                                    copyTextWithFeedback(
                                                      text: "+40372933896",
                                                    )
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(30),
                                                        bottomRight:
                                                            Radius.circular(30)),
                                                    color: Colors.black),
                                              ),
                                            )
                                          ]),
                                        ),
                                        SizedBox(height: 16.0),
                                        Container(
                                          margin:
                                              EdgeInsets.symmetric(vertical: 8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.location_on),
                                              SizedBox(width: 8.0),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Locație',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                          margin:
                                              EdgeInsets.symmetric(vertical: 8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.lock),
                                              SizedBox(width: 8.0),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Acces',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                          margin:
                                              EdgeInsets.symmetric(vertical: 8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.info),
                                              SizedBox(width: 8.0),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Bine de știut',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                  ) : SizedBox.shrink(),
                                ],
                              ),

                          ),
                        ),
                  SizedBox(
                    height: 200,
                  ),
                  reviews(),
                  whyShouldYouHireUs(),
                  MyFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> init() async {
    try {
      this.isLoading = true;
      setState(() {});
      fetchUnitsFromFirestore();
      fetchUnitsTypes();
    } catch (e) {
      MyDialog.showAlert(context, "Ok", "Error $e");
    } finally {
      await Future.delayed(Duration(seconds: 1));
      this.isLoading = false;
      setState(() {});
    }
  }

  Map<String, dynamic>? findUnitById(
      {required List<Map<String, dynamic>> units, required String id}) {
    for (var unit in units) {
      if (unit['id'] == id) {
        return unit;
      }
    }
    return null;
  }

  Future<List<Map<String, dynamic>>> fetchUnitsTypes() async {
    if (this.unitsType.isNotEmpty) return [];
    List<Map<String, dynamic>> unitsList = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('unitsType').get();
      querySnapshot.docs.forEach((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        data["id"] = doc.id;
        unitsList.add(data);
      });
      this.unitsType = unitsList;
      // print(unitsList);
      setState(() {});
      return unitsList;
    } catch (e) {
      MyDialog.showAlert(context, "Ok", "Error fetching units types: $e");
      print("Error fetching units types: $e");
      return unitsList;
    }
  }

  Future<List<Map<String, dynamic>>> fetchUnitsFromFirestore() async {
    if (this.boxes.isNotEmpty) return [];
    List<Map<String, dynamic>> unitsList = [];
    try {
      QuerySnapshot unitsSnapshot = await FirebaseFirestore.instance
          .collection('units')
          .where('status', isEqualTo: 'available')
          .limit(5)
          .get();
      unitsSnapshot.docs.forEach((DocumentSnapshot document) {
        Map<String, dynamic> unit = document.data() as Map<String, dynamic>;
        unitsList.add(unit);
      });
      // print(unitsList);
      this.boxes = unitsList;
      return unitsList;
    } catch (e) {
      print("Error fetching units: $e");
      return [];
    }
  }
}
