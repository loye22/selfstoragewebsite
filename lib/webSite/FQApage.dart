

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/footer.dart';

import '../widget/header.dart';

class FQApage extends StatefulWidget {
  static final routeName = "/FQApage";

  const FQApage({super.key});

  @override
  State<FQApage> createState() => _FQApageState();
}

class _FQApageState extends State<FQApage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Animate(
          effects: [FadeEffect(duration: Duration(milliseconds: 700))],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              Center(
                child: Container(
                  width: staticVar.golobalWidth(context) * .5 ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        "Intrebări Frecvente",
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Bine ați venit pe pagina noastră de Întrebări Frecvente. Am adunat aici răspunsuri la întrebările comune legate de serviciile noastre de închiriere boxe de depozitare, pentru a vă oferi informațiile de care aveți nevoie rapid și eficient.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Condiții de Garanție',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Care sunt condițiile referitoare la garanția pentru închirierea unei boxe?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: Pentru a asigura buna întreținere și securitate a spațiilor noastre de depozitare, solicităm o garanție echivalentă cu contravaloarea unei luni de chirie la momentul preluării boxei. Această garanție are rolul de a acoperi eventualele daune sau neconformități care ar putea apărea în timpul utilizării boxei.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Securitatea Boxei',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Este necesar ca cei care închiriază să aducă propriul lacăt?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: Recomandăm clienților să aducă propriul lacăt pentru a asigura un nivel maxim de securitate și confidențialitate. Cu toate acestea, oferim și opțiunea de a achiziționa un lacăt direct de la noi, pentru a facilita procesul.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Se păstrează chei de rezervă pentru lacătele clienților?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: În scopul menținerii confidențialității și securității spațiilor de depozitare, nu reținem duplicatul cheilor sau cheile de rezervă pentru lacătele utilizate de către clienți. Responsabilitatea gestionării atât a cheilor cât și a rezervelor acestora revine în întregime clientului.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Acces și Facilități',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Autovehiculele au acces în incintă pentru descărcarea produselor?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: Da, facilităm accesul autovehiculelor în incintă pentru a facilita o descărcare eficientă a produselor. Acest serviciu este conceput pentru a oferi maximă comoditate și pentru a simplifica procesul de mutare a bunurilor.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Oferiți asistență pentru manipularea obiectelor grele?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: Conștienți de nevoile clienților noștri, avem la dispoziție un electrostivuitor și oferim asistență la cerere pentru manipularea și transportul bunurilor mai grele. Serviciul este disponibil pentru a asigura manipularea cu cea mai mare grijă a bunurilor dumneavoastră.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Rezervări Online',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Q: Ce proceduri trebuie urmate de cei care rezervă o boxă online?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A: Clienții care își rezervă o boxă online sunt rugați să se prezinte la locație pentru a semna contractul de închiriere înainte de a prelua efectiv boxa. Această etapă garantează o înțelegere clară și acceptarea condițiilor de închiriere pentru ambele părți.',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Pentru orice alte întrebări sau clarificări, vă rugăm să nu ezitați să ne contactați prin intermediul paginii noastre de contact. Suntem aici pentru a vă asista și a vă oferi cele mai bune servicii posibile.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 150,)
                    ]
                  ),
                ),
              ) ,

              Container(
                  padding: EdgeInsets.all(80),
                  height: staticVar.golobalHigth(context) * .5,
                  width: double.infinity,
                  color: staticVar.themeColor,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rezervă-ți spațiul de depozitare astăzi',
                          style: TextStyle(
                              fontSize: 37.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Răsfoiți opțiunile noastre de depozitare',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Button(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(webSiteUnitsPage.routeName);
                            },
                            text: "Alege boxa",
                            pdding: EdgeInsets.zero,
                            lightMode: true),
                      ],
                    ),
                  )),
              MyFooter()
            ],
          ),
        ),
      ),
    );
  }
}
