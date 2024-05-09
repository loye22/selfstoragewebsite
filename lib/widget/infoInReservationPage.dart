import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/uniteReserve.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';

class infoInReservationPage extends StatefulWidget {
  const infoInReservationPage({super.key});

  @override
  State<infoInReservationPage> createState() => _infoInReservationPageState();
}

class _infoInReservationPageState extends State<infoInReservationPage> {
  @override
  Widget build(BuildContext context) {
    return staticVar.isItWebPlatform(context) ?
    // The widget for the  web
    Container(
      padding: EdgeInsets.all(80),
      height: staticVar.golobalHigth(context) + 100,
      width: staticVar.fullwidth(context),
      //  color: Color(0xFFF4F4F5),
      child: Row(
        //direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical,
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
    ) :
    // This one is for phone
    Container(
      padding: EdgeInsets.all(10),
      height: staticVar.fullHigth(context) ,
      width: staticVar.fullwidth(context),
      //  color: Color(0xFFF4F4F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical,
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
            content: "Bld. Poligrafiei nr. 1B, București, 013704",
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
            width: staticVar.golobalWidth(context) * .8,
          ),
          SizedBox(height: 20,),

          Container(
            clipBehavior: Clip.hardEdge,
            width: staticVar.fullwidth(context),
            height: staticVar.golobalHigth(context) * .5,
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
        ],
      ),
    );
  }
}
