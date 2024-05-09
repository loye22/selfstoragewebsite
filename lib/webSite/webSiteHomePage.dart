import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/SidebarLayout.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';
 import 'package:self_storage_web_site/widget/panner.dart';
import 'package:self_storage_web_site/widget/panner3.dart';
import 'package:self_storage_web_site/widget/reviews.dart';
import 'package:self_storage_web_site/widget/whyShouldYouHireUs.dart';
 import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class webSiteHomePage extends StatelessWidget {
  static final routeName = "/webSiteHomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(), // Assuming Header is a widget you've defined elsewhere
            SizedBox(
              height: 50,
            ),
            staticVar.golobalWidth(context) < 600 ?
            Container(
              //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              width: double.infinity,
              height: staticVar.golobalHigth(context) + 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // Adjust this according to your needs
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:  8.0),
                    child: Text(
                      "Soluția ta inteligentă de\ndepozitare!",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: staticVar.golobalHigth(context) * .05, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Add some space between the texts and the image
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0 , right: 8.0 ),
                    child: Text(
                      "Dacă sunteți în căutarea unui spațiu de depozitare în București, Self Storage vă pune la dispoziție boxe de diferite dimensiuni, securizate și dedicate afacerilor cât persoanelor fizice.",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:  8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Button(
                          onTap: () {

                            Navigator.of(context).pushNamed(webSiteUnitsPage.routeName);

                          },
                          text: "Alege boxa",
                          pdding: EdgeInsets.zero,
                        ),
                        Button(
                          onTap: () {},
                          text: "Vizionați videoclipul nostru",
                          width: 200,
                        ),
                      ],
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: staticVar.golobalWidth(context) + 30 ,
                  height: staticVar.golobalHigth(context) * .4,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/m1.jpg'),
                      fit: BoxFit.cover, // You can adjust the BoxFit property as needed
                    ),
                  ),
                ),
              ),

                ],
              ),
            ) :
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
                        text:
                            "Dacă sunteți în căutarea unui spațiu de depozitare în București, Self Storage vă pune la dispoziție boxe de diferite dimensiuni, securizate și dedicate afacerilor cât persoanelor fizice.",
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
                          Button(
                            onTap: () {
                              Navigator.of(context).pushNamed(webSiteUnitsPage.routeName);

                            },
                            text: "Alege boxa",
                            pdding: EdgeInsets.zero,
                          ),
                          Button(
                            onTap: () {},
                            text: "Vizionați videoclipul nostru",
                            width: 200,
                          ),
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
              height: staticVar.isItWebPlatform(context) ? staticVar.fullHigth(context) * .7  : staticVar.fullHigth(context) *2  ,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Cele mai comune motive pentru care\nsuntem aleși',
                    style:
                        TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Flex(
                    direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UseCaseCard(
                        image: AssetImage('assets/m3.jpg'),
                        title: 'Mută-ți afacerea în zona de nord a capitalei',
                        body:
                            'Deschide-ți sediul social pe Bld. Poligrafiei 1B și stochează toate actele afacerii tale într-un loc sigur.',
                      ),
                      UseCaseCard(
                        image: AssetImage('assets/m4.jpg'),
                        title: 'Creează spațiu în viața ta',
                        body:
                            'Soluțiile noastre de boxe și depozite sunt ideale pentru cei ce doresc să își elibereze spațiul de acasă sau sediul afacerii',
                      ),
                      UseCaseCard(
                        image: AssetImage('assets/m5.jpg'),
                        title: 'Student sau plecat în străinătate?',
                        body:
                            'Boxele mici la prețuri accesibile sunt perfecte pentru depozitarea conținutului unei camere de cămin sau a unor bagaje și cutii.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding:staticVar.isItWebPlatform(context) ?  EdgeInsets.all(80) :  EdgeInsets.all(20)  ,
              height: staticVar.isItWebPlatform(context) ?  staticVar.golobalHigth(context) * .99 : staticVar.golobalHigth(context) * 1.5 ,
              width: double.infinity,
              color: Color(0xFF18181B),
              child: Flex(
                direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
                children: [
                 Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cât de simplu este să începi:',
                          style: TextStyle(
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StepWidget(
                                number: '1.',
                                title: 'Alege dimensiunea boxei',
                                text:
                                    'Nu îți face griji — poți schimba oricând dimensiunea, cât timp există disponibilitate'),
                            StepWidget(
                                number: '2.',
                                title: 'Alege data mutării',
                                text:
                                    'Alege ziua care ți se potrivește cel mai mult pentru a îți muta lucrurile'),
                            StepWidget(
                                number: '3.',
                                title: 'Finalizează rezervarea online',
                                text:
                                    'Rezervarea se finalizează imediat după efectuarea plății online'),
                          ],
                        ),
                      ],
                    ),

                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width:staticVar.isItWebPlatform(context) ? staticVar.golobalWidth(context) * .5 : staticVar.golobalWidth(context) * 1.5  ,
                    height:staticVar.isItWebPlatform(context) ?  staticVar.golobalHigth(context) * .8 : staticVar.golobalHigth(context) * .5  ,
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
                  )
                ],
              ),
            ),

            reviews(),
            whyShouldYouHireUs(),
            Container(
              padding:staticVar.isItWebPlatform(context) ?  EdgeInsets.all(80) : EdgeInsets.all(20) ,
              height: staticVar.golobalHigth(context) * .5,
              width: double.infinity,
              color: staticVar.themeColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rezervă-ți spațiul de depozitare astăzi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize:staticVar.isItWebPlatform(context) ?  37.0 : 24 ,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 15,) ,
                    Text(
                      'Răsfoiți opțiunile noastre de depozitare',
                      style: TextStyle(
                        fontSize:staticVar.isItWebPlatform(context) ? 18.0 : 15,

                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 10,) ,
                    Button(
                      onTap: () {
                        Navigator.of(context).pushNamed(webSiteUnitsPage.routeName);
                      },
                      text: "Alege boxa",
                      pdding: EdgeInsets.zero,
                      lightMode : true
                    ),



                  ],
                ),
              )
            ),
            MyFooter(),


          ],
        ),
      ),
    );
  }
}





class StepWidget extends StatelessWidget {
  final String number;
  final String title;
  final String text;

  const StepWidget({
    Key? key,
    required this.number,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number + " " + title,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: staticVar.themeColor),
          ),
          SizedBox(height: 5.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
