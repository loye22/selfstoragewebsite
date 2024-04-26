import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:self_storage_web_site/main.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/uniteReserve.dart';
import 'package:self_storage_web_site/webSite/webSiteHomePage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';
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
    return Scaffold(
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
                          padding: EdgeInsets.only(
                              left: staticVar.golobalWidth(context) * .07,
                              top: staticVar.golobalWidth(context) * .04),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                  width: staticVar.golobalWidth(context) * .6,
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
                                Container(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Ce spun clienții noștri",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReviewCard(
                              name: 'Marius Apostol',
                              review:
                                  'A fost extrem de simplu sa rezerv o boxa, a 2a zi eram deja cu motorul la boxa. Au incaput motocicleta, bicicletele copiilor, schiurile si toate articolele sportive/jucariile copiilor. Super convenabil, stiu ca motocicleta mea sta in siguranta cu o temperatura controlata si pot veni oricand sa o vad si sa mai umblu la ea.',
                              rating: 5,
                            ),
                            ReviewCard(
                              name: 'Raluca Dan',
                              review:
                                  'Altfel arata sediul in zona de nord a capitalei. Tot aici depozitez si toate actele firmei, simplu, safe, foarte misto. Imi place totul aici. Daca puteam, imi faceam si biroul tot aici :))',
                              rating: 4,
                            ),
                            ReviewCard(
                              name: 'Mihnea Radu',
                              review:
                                  'Apreciez mult faptul ca se pune pret pe confidentialitate, securitate si curatenie. Am depozitat obiecte de valoare si prin faptul ca exista paza fizica mereu si nu a trebuit sa dau nicio explicatie, am simtit ca lucrurile mele sunt foarte in siguranta. Multumesc!',
                              rating: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(80),
                  height: staticVar.golobalHigth(context) + 100,
                  width: double.infinity,
                  color: Color(0xFFF4F4F5),
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        width: staticVar.golobalWidth(context) * .5,
                        height: staticVar.golobalHigth(context) * .8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          // Ensures circular clipping
                          child: Image.asset(
                            "assets/m7.jpg",
                            fit: BoxFit
                                .cover, // Optional, to cover the entire container
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: staticVar.golobalWidth(context) * .4,
                        padding: EdgeInsets.only(top: 20, left: 20),
                        margin: EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Despre noi",
                                style: TextStyle(
                                    fontSize: 36.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Self Storage este soluția ideală pentru nevoile de depozitare atât pentru persoane fizice cât și juridice.',
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                'Cum ne diferențiem?',
                                style: TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10.0),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  Text(
                                    '- Asigurăm monitorizare permanentă',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Temperatura locației este controlată',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Închirierea boxei se face în doar câteva minute, complet online',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Îți poți găzdui chiar și sediul social al firmei în boxa ta',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Locație centrală',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                'Ce poți depozita în boxa ta?',
                                style: TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10.0),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  Text(
                                    '- Actele companiei fără riscul de a se deteriora datorită umezelii sau diferențelor extreme de temperatură',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Piese de mobilier și alte obiecte personale de care nu mai ai loc prin casă',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Motocicleta, anvelopele de iarnă, bicicletele tale și ale celor mici... toate într-un singur depozit',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  Text(
                                    '- Practic poți depozita orice, doar să alegi dimensiunea potrivită pentru boxa ta.',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                'Cu selfstorage-ul nostru, aveți posibilitatea de a gestiona spațiul dvs. în mod eficient și de a păstra lucrurile importante în condiții sigure.',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                MyFooter(),
              ],
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
