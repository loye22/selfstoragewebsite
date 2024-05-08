import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:self_storage_web_site/webSite/FQApage.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';
import 'package:self_storage_web_site/widget/txtButton.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class header extends StatefulWidget {
  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  bool rederIt = false ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchOptions();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         this.rederIt ?  (staticVar.golobalWidth(context) < 600
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              this.rederIt ?   Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.orange,
                child: Center(
                  child: TextRenderer(
                    text: 'Promotie 20% discount primele doua luni',
                    child: Text(
                      'Promotie 20% discount primele doua luni',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ) : SizedBox.shrink(),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max, // Ad
                  children: [
                    TextRenderer(
                      text: 'Ai o întrebare?',
                      child: Text(
                        'Ai o întrebare?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    TextRenderer(
                      text: 'Telefon 0372933896',
                      child: Text(
                        'Telefon 0372933896',
                        style: TextStyle(
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: staticVar.golobalWidth(context) * .1,
                    )
                  ],
                ),
              ),
            ],
          )
              : Row(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                child: Text(
                  "",
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.orange,
                child: TextRenderer(
                  text: 'Promotie 20% discount primele doua luni',
                  child: Text(
                    'Promotie 20% discount primele doua luni',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Ai o întrebare?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Telefon 0372933896',
                        style: TextStyle(
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: staticVar.golobalWidth(context) * .1,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))  : SizedBox.shrink(),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: staticVar.golobalWidth(context) < 600
                    ? const EdgeInsets.only(left: 5)
                    : const EdgeInsets.only(left: 100),
                child: Image.asset(
                  width: staticVar.golobalHigth(context) * .3,
                  'assets/logo.png',
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: staticVar.isItWebPlatform(context) ?  EdgeInsets.only(right: 50) : EdgeInsets.only(right: 0),
                child: Row(
                  children: [
                    txtButton(
                      onTap: () {
                        Navigator.of(context).pushNamed(FQApage.routeName);
                      },
                      txt: 'FAQs',
                    ),
                    txtButton(
                      onTap: () {},
                      txt: 'Conectare',
                    ),
                    staticVar.isItWebPlatform(context) ?  Button(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            webSiteUnitsPage.routeName);
                      },
                      text: 'Alege boxa',
                      color: Color.fromRGBO(251, 171, 18, 1),
                    ) : SizedBox.shrink(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }


  Future<void> fetchOptions() async {
    try {
      // Get reference to the Firestore collection
      CollectionReference optionsCollection =
      FirebaseFirestore.instance.collection('options');

      // Get document snapshot
      DocumentSnapshot documentSnapshot =
      await optionsCollection.doc('1').get();

      // Check if document exists and retrieve 'hidePrices' field
      if (documentSnapshot.exists) {
        Map<String, dynamic> data = documentSnapshot.data() as Map<String,dynamic>;
        this.rederIt =  !data['hidePromotion'];
        setState(() {});

      }
    } catch (e) {
      print("Error fetching hidePrices: $e");
      MyDialog.showAlert(context, "Ok", "Error fetching hidePrices: $e");

    }
  }




}
