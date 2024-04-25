import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/txtButton.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class header extends StatefulWidget {
  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          staticVar.golobalWidth(context) < 600
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
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
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max, // Ad
                        children: [
                          TextRenderer(
                            text:'Ai o întrebare?' ,
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
                ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:staticVar.golobalWidth(context) < 600 ?    const EdgeInsets.only(left: 10):   const EdgeInsets.only(left: 100),
                child: Image.network(
                  width: staticVar.golobalHigth(context) * .3,
                  'assets/logo.png',
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  children: [
                    txtButton(
                      onTap: () {},
                      txt: 'FAQs',
                    ),
                    txtButton(
                      onTap: () {},
                      txt: 'Conectare',
                    ),
                    Button(
                      onTap: () {
                        Navigator.of(context).pushNamed(webSiteUnitsPage.routeName);

                      },
                      text: 'Alege boxa',
                      color: Color.fromRGBO(251, 171, 18, 1),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }



}
