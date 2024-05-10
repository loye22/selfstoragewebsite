import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';

class privacyPage extends StatefulWidget {
  static final routeName = "/privacyPage";

  const privacyPage({super.key});

  @override
  State<privacyPage> createState() => _privacyPageState();
}

class _privacyPageState extends State<privacyPage> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
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
                        Text("Confidențialitate" , style: TextStyle(fontSize: 48 , fontWeight: FontWeight.bold ),) ,
                        Text(
                          "Suntem angajați să protejăm confidențialitatea vizitatorilor noștri de pe site-ul web; această politică stabilește modul în care vom trata informațiile dvs. personale. Site-ul nostru web folosește cookie-uri. Vă vom cere să consimțiți la utilizarea cookie-urilor conform termenilor acestei politici când vizitați site-ul nostru web pentru prima dată. Prin utilizarea site-ului nostru web și acordându-vă la această politică, vă exprimați consimțământul la utilizarea cookie-urilor conform termenilor acestei politici.",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Ce informații colectăm?',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Putem colecta, stoca și utiliza următoarele tipuri de informații personale:',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(a) informații despre computerul dvs. și vizitele dvs. pe acest site web (inclusiv adresa dvs. IP, locația geografică, tipul și versiunea browser-ului, sistemul de operare, sursa de referință, durata vizitei, numărul de vizualizări ale paginilor, navigarea pe site și detalii);',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(b) informații referitoare la orice tranzacții efectuate între dvs. și noi pe sau în legătură cu acest site web, inclusiv informații referitoare la orice achiziții pe care le faceți de bunuri sau servicii de la noi (inclusiv detalii);',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(c) informații pe care ni le furnizați în scopul înregistrării la noi (inclusiv detalii);',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(d) informații pe care ni le furnizați în scopul abonării la serviciile site-ului nostru web, notificările prin e-mail și/sau buletinele noastre informative (inclusiv detalii);',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(e) orice alte informații pe care alegeți să ni le trimiteți; și',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(f) alte informații.',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Cookie-uri',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Un cookie este un fișier care conține un identificator (o serie de litere și numere) care este trimis de un server web către un browser web și este stocat de browser. Identificatorul este apoi trimis înapoi către server de fiecare dată când browser-ul solicită o pagină de la server. Acest lucru permite serverului web să identifice și să urmărească browser-ul web. Putem folosi atât cookie-uri \"de sesiune\", cât și cookie-uri \"persistente\" pe site-ul web. Cookie-urile de sesiune vor fi șterse de pe computerul dvs. când închideți browser-ul. Cookie-urile persistente vor rămâne stocate pe computerul dvs. până când sunt șterse sau până când ajung la o dată de expirare specificată. Vom folosi cookie-urile de sesiune pentru a: vă urmări în timp ce navigați pe site; vă urmări articolele din coșul de cumpărături; preveni fraudele și mări securitatea site-ului web; și alte utilizări. Vom folosi cookie-urile persistente pentru a: permite site-ului nostru web să vă recunoască atunci când vizitați; urmări preferințele dvs. în legătură cu utilizarea site-ului nostru web; și alte utilizări. Folosim Google Analytics pentru a analiza utilizarea acestui site web. Google Analytics generează informații statistice și alte informații despre utilizarea site-ului web prin intermediul cookie-urilor, care sunt stocate pe computerele utilizatorilor. Informațiile generate referitoare la site-ul nostru web sunt utilizate pentru a crea rapoarte despre utilizarea site-ului web. Google va stoca aceste informații. Politica de confidențialitate a Google este disponibilă la: http://www.google.com/privacypolicy.html. Cele mai multe browsere vă permit să respingeți toate cookie-urile, în timp ce unele browsere vă permit să respingeți doar cookie-urile terțe. De exemplu, în Internet Explorer (versiunea 9) puteți refuza toate cookie-urile făcând clic pe \"Instrumente\", \"Opțiuni internet\", \"Confidențialitate\" și selectând \"Blocare toate cookie-urile\" folosind selectorul culisant. Blocarea tuturor cookie-urilor va avea însă un impact negativ asupra utilizabilității multor site-uri web, inclusiv acesta.",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Utilizarea informațiilor dvs. personale',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Informațiile personale transmise nouă prin intermediul acestui site web vor fi utilizate în scopurile specificate în această politică de confidențialitate sau în părți relevante ale site-ului web.',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Putem utiliza informațiile dvs. personale pentru a:',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(a) administra site-ul web;',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(b) îmbunătăți experiența dvs. de navigare prin personalizarea site-ului web;',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(c) permite utilizarea serviciilor disponibile pe site-ul web;',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(d) vă trimite buletinul nostru informativ și alte comunicări de marketing referitoare la afacerea noastră pe care credem că ar putea fi de interes pentru dvs., prin poștă sau, acolo unde v-ați exprimat în mod specific acordul în acest sens, prin e-mail sau tehnologii similare (și ne puteți informa în orice moment dacă nu mai doriți comunicări de marketing);',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(g) menține securitatea site-ului web și preveni fraudele;',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Modificări ale politicii',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Putem actualiza această politică de confidențialitate din când în când prin postarea unei noi versiuni pe site-ul nostru web. Ar trebui să verificați această pagină din când în când pentru a vă asigura că sunteți mulțumit de orice modificări.',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 150,)
                      ],
                    ),
                  ),
                ),
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
      ),
    );
  }
}

Widget _buildList(List<String> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: items
        .map((item) => Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                item,
                style: TextStyle(fontSize: 14),
              ),
            ))
        .toList(),
  );
}
