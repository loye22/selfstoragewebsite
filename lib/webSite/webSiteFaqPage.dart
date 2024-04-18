import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(), // Assuming Header is a widget you've defined elsewhere
            SizedBox(
              height: 50,
            ),
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
                            onTap: () {},
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
                  Row(
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
          /*  Container(
              padding: EdgeInsets.all(80),
              height: staticVar.golobalHigth(context) * .99,
              width: double.infinity,
              color: Color(0xFF18181B),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    margin: EdgeInsets.all(20.0),
                    child: Column(
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
                        "m7.jpg",
                        fit: BoxFit
                            .cover, // Optional, to cover the entire container
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(child: Expanded(child: Text("Ce spun clienții noștri" , style: TextStyle(fontSize: 34 , fontWeight: FontWeight.bold),))),
            ),
            Container(
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(top: 50 , ),
                child: Row(
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
              ),
            )*/
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final int rating;

  ReviewCard({required this.name, required this.review, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: staticVar.golobalWidth(context) * .35,
      height: staticVar.golobalHigth(context) * .45,
      child: Card(
        color: Color(0xFFEEECDC),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      color: Color(0xFFFBAB12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  review,
                  style: TextStyle(fontSize: 16),
                ),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
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
