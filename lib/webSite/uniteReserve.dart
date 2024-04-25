import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/copyTextWithFeedback.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';

class uniteReserve extends StatefulWidget {
  static final routeName = "/uniteReserve";

  const uniteReserve({super.key});

  @override
  State<uniteReserve> createState() => _uniteReserveState();
}

class _uniteReserveState extends State<uniteReserve> {
  @override
  Widget build(BuildContext context) {

      final receivedData =
          ModalRoute.of(context)?.settings?.arguments as Map<String, dynamic>;
      print(receivedData.toString());
    return Scaffold(
      body: SingleChildScrollView(
        child: Animate(
          effects: [FadeEffect(duration: Duration(milliseconds: 700))],
          child: Column(
            children: [
              header(),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: staticVar.golobalHigth(context) * .7,
                  width: staticVar.golobalWidth(context),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    receivedData["uniteData"]?["unitTypeName"]?? "404Notfound" ,
                                    style: GoogleFonts.roboto(
                                        fontSize: 58,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    receivedData["description"] ?? "404Notfound",
                                    style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Lungime ${receivedData["dimensions"]?["length"]?? "404From"}m",
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Lăţime ${receivedData["dimensions"]?["width"]?? "404From" }m",
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Înălţime ${receivedData["dimensions"]?["height"] ?? "404From"}m",
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  staticVar.divider(
                                      width:
                                          staticVar.golobalWidth(context) * .4),
                                  Row(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "€ ${receivedData["price"]}",
                                            style: GoogleFonts.roboto(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            "/lună+TVA",
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: staticVar.golobalWidth(context) *
                                            .15,
                                      ),
                                      Button(
                                        onTap: () {},
                                        text: "Rezervă acum",
                                        width: staticVar.golobalWidth(context) *
                                            .1,
                                        height:
                                            staticVar.golobalHigth(context) *
                                                .07,
                                      )
                                    ],
                                  ),
                                  staticVar.divider(
                                      width:
                                          staticVar.golobalWidth(context) * .4),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Nevoie de ajutor? Sună-ne  "),
                                  copyTextWithFeedback(text: "0372933896")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: staticVar.golobalHigth(context) * .5,
                        width: staticVar.golobalWidth(context) * .3,
                        child: Image.network(
                          receivedData["img"],
                          fit: BoxFit.cover,
                        )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: staticVar.golobalHigth(context) * .12,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List<String>.from(receivedData["sellingPoints"]).map((text) {
                    if(text == "") {
                      return Text("");
                    }

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.check , color: Colors.white,),
                        SizedBox(width: 10,) ,
                        Text(
                          text,
                          style: GoogleFonts.roboto(color: Colors.white , fontSize : 18),
                        ),
                      ],
                    ),
                  );
                }).toList(),) ,
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
                          "assets/m9.jpg",
                          fit: BoxFit
                              .cover, // Optional, to cover the entire container
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: staticVar.golobalWidth(context) * .47,
                      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      padding: EdgeInsets.only(left: 70, top: 50),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Despre Self Storage.ro Poligrafiei",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 15), // Equivalent to p-0
                          SidebarPanel(
                            icon: Icons.location_on,
                            title: "Locație",
                            content:
                                "Bld. Poligrafiei nr. 1B, București, 013704",
                            linkText: "Vezi Direcții",
                            linkUrl:
                                "https://www.google.com/maps/dir/?api=1&destination=Bld.+Poligrafiei+nr.+1B%2C+%2C+Bucure%C8%99ti%2C+013704",
                          ),
                          SidebarPanel(
                            linkText: "",
                            linkUrl: "",
                            icon: Icons.lock,
                            title: "Acces",
                            content:
                                "Acces ușor și sigur la boxe și depozite.\nLuni - Duminică\n6:30a.m - 11:00p.m",
                          ),
                          Button(
                            onTap: () {
                              Navigator.popAndPushNamed(
                                  context, webSiteUnitsPage.routeName);
                            },
                            text: "Vedeți toate opțiunile de stocare",
                            width: staticVar.golobalWidth(context) * .2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              MyFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class SidebarPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final String linkText;
  final String linkUrl;

  const SidebarPanel({
    required this.icon,
    required this.title,
    required this.content,
    required this.linkText,
    required this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 32), // Equivalent to sidebar-panel__icon
              SizedBox(width: 8),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ), // Equivalent to sidebar-panel__title
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(content), // Equivalent to sidebar-panel__body
                GestureDetector(
                  onTap: () {
                    // Open link
                    // You can use launchURL() from url_launcher package to open the link in browser
                  },
                  child: Text(
                    linkText!,
                    style: TextStyle(color: staticVar.themeColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





class StringListWidget extends StatelessWidget {
  final double height;
  final List<String> stringList;

  const StringListWidget({
    Key? key,
    required this.height,
    required this.stringList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black,  border: Border.all(width: 5,color: Colors.red)),
      width: double.infinity,
      height: height,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: stringList.map((text) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.check , color: Colors.white,),
                    SizedBox(width: 10,) ,
                    Text(
                      text,
                      style: GoogleFonts.roboto(color: Colors.white , fontSize : 18),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

