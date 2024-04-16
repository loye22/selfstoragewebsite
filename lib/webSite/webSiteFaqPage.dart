import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/widget/SidebarLayout.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/panner.dart';
import 'package:self_storage_web_site/widget/panner3.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class webSiteFaqPage extends StatelessWidget {
  static final routeName = "/webSiteFaqPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            header(), // Assuming Header is a widget you've defined elsewhere
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Adjust this according to your needs
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Soluția ta inteligentă de\ndepozitare!",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 48, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Add some space between the texts and the image
                  TextRenderer(
                    text :"Dacă sunteți în căutarea unui spațiu de depozitare în București, Self Storage vă pune la dispoziție boxe de diferite dimensiuni, securizate și dedicate afacerilor cât persoanelor fizice.",
                    child: Text(
                      "Dacă sunteți în căutarea unui spațiu de depozitare în București, Self Storage vă pune la dispoziție boxe de diferite dimensiuni, securizate și dedicate afacerilor cât persoanelor fizice.",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Button(onTap: () {},
                        text: "Alege boxa",
                        pdding: EdgeInsets.zero,),
                      Button(onTap: () {},
                        text: "Vizionați videoclipul nostru",
                        width: 200,),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Image.asset('assets/m1.jpg'),
            ),
          ],
        ),
        panner(),
        SidebarLayout(),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Cele mai comune motive pentru care\nsuntem aleși',
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700 ),
              ),
              SizedBox(height: 20,) ,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UseCaseCard(
                    image: AssetImage('assets/m3.jpg'),
                    title: 'Mută-ți afacerea în zona de nord a capitalei',
                    body: 'Deschide-ți sediul social pe Bld. Poligrafiei 1B și stochează toate actele afacerii tale într-un loc sigur.',
                  ),
                  UseCaseCard(
                    image: AssetImage('assets/m4.jpg'),
                    title: 'Creează spațiu în viața ta',
                    body: 'Soluțiile noastre de boxe și depozite sunt ideale pentru cei ce doresc să își elibereze spațiul de acasă sau sediul afacerii',
                  ),
                  UseCaseCard(
                    image: AssetImage('assets/m5.jpg'),
                    title: 'Student sau plecat în străinătate?',
                    body: 'Boxele mici la prețuri accesibile sunt perfecte pentru depozitarea conținutului unei camere de cămin sau a unor bagaje și cutii.',
                  ),
                ],
              ),
            ],
          ),
        ),


      ],
    ),)
    ,
    );
  }
}
