import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/widget/button.dart';

class uniteCustomerCard extends StatelessWidget {
  final String imageUrl;
  final String unitName;
  final String description;
  final String price;
  final VoidCallback? onPressed;

  const uniteCustomerCard({
    Key? key,
    required this.imageUrl,
    required this.unitName,
    required this.description,
    required this.price,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: staticVar.golobalHigth(context) * .25,
        width: staticVar.golobalWidth(context) * .5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Card(
          surfaceTintColor: Colors.white,
          elevation: 5,
          color: Color(0xFFFFFFFF),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: staticVar.golobalWidth(context) * .15,
                    height: staticVar.golobalWidth(context) * .1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(this.imageUrl),
                        fit: BoxFit.fill,
                      ),
                      //shape: BoxShape.circle,
                    )),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          this.unitName,
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              color: staticVar.themeColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          this.description,
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          this.price,
                          style: GoogleFonts.roboto(
                              fontSize: 24, fontWeight: FontWeight.w400),
                        ), Text(
                          "/lună+TVA",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Button(onTap:(){this.onPressed;}, text: "Rezervă acum",width:  150,)
                  ],
                ) ,

              ],
            ),
          ),
        ));
  }
}
