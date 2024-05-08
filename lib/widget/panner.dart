import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class panner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:staticVar.themeColor, // Background color for the container
      //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child:staticVar.golobalWidth(context) < 600 ?
        Container(
          width: staticVar.golobalWidth(context) *2,
          height: staticVar.golobalHigth(context) * .4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KeySellingPoint(
                icon: Icons.check,
                text: 'Sisteme supraveghere 24/7',
              ),
              KeySellingPoint(
                icon: Icons.check,
                text: 'Programul cu publicul este de luni pana vineri, orele 7.00 - 15.00',
              ),
              KeySellingPoint(
                icon:Icons.check,
                text: 'Accesul cu card de luni pana duminica orele 6.30 - 23.00',
              ),
              KeySellingPoint(
                icon:Icons.check,
                text: 'Temperatură optimă',
              ),
            ],
          ),
        ) :
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              KeySellingPoint(
                icon: Icons.check,
                text: 'Sisteme supraveghere 24/7',
              ),
              KeySellingPoint(
                icon: Icons.check,
                text: 'Programul cu publicul este de luni pana vineri, orele 7.00 - 15.00',
              ),
              KeySellingPoint(
                icon:Icons.check,
                text: 'Accesul cu card de luni pana duminica orele 6.30 - 23.00',
              ),
              KeySellingPoint(
                icon:Icons.check,
                text: 'Temperatură optimă',
              ),
            ],
          ),
        ),

    );
  }
}

class KeySellingPoint extends StatelessWidget {
  final IconData icon;
  final String text;

  KeySellingPoint({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return staticVar.golobalWidth(context) < 600 ? 
    Container(
      padding:staticVar.golobalWidth(context) < 600 ? EdgeInsets.all(8.0) :  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      // margin: EdgeInsets.only(right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.white, // Icon color
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ) : Expanded(
      child: Container(
        padding:staticVar.golobalWidth(context) < 600 ? EdgeInsets.zero :  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // margin: EdgeInsets.only(right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.white, // Icon color
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
