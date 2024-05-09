import 'package:flutter/cupertino.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';


class whyShouldYouHireUs extends StatefulWidget {
  const whyShouldYouHireUs({super.key});
  @override
  State<whyShouldYouHireUs> createState() => _whyShouldYouHireUsState();
}

class _whyShouldYouHireUsState extends State<whyShouldYouHireUs> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: staticVar.isItWebPlatform(context) ?  EdgeInsets.all(80) : EdgeInsets.all(5) ,
      height: staticVar.isItWebPlatform(context) ?   staticVar.golobalHigth(context) + 100 :  staticVar.golobalHigth(context)  * 2.5  ,
      width: double.infinity,
      color: Color(0xFFF4F4F5),
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
        children:staticVar.isItWebPlatform(context) ?
        [
          Container(
            clipBehavior: Clip.hardEdge,
            width: staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .5 : staticVar.fullwidth(context)  ,
            height: staticVar.golobalHigth(context) * .8,
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
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .4 : null ,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Despre noi",
                    style: TextStyle(
                        fontSize: 36.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Self Storage este soluția ideală pentru nevoile de depozitare atât pentru persoane fizice cât și juridice.',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Cum ne diferențiem?',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                        '- Asigurăm monitorizare permanentă',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Temperatura locației este controlată',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Închirierea boxei se face în doar câteva minute, complet online',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Îți poți găzdui chiar și sediul social al firmei în boxa ta',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Locație centrală',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Ce poți depozita în boxa ta?',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                        '- Actele companiei fără riscul de a se deteriora datorită umezelii sau diferențelor extreme de temperatură',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Piese de mobilier și alte obiecte personale de care nu mai ai loc prin casă',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Motocicleta, anvelopele de iarnă, bicicletele tale și ale celor mici... toate într-un singur depozit',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Practic poți depozita orice, doar să alegi dimensiunea potrivită pentru boxa ta.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Cu selfstorage-ul nostru, aveți posibilitatea de a gestiona spațiul dvs. în mod eficient și de a păstra lucrurile importante în condiții sigure.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ] :
        [
          Container(
            clipBehavior: Clip.hardEdge,
            width: staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .5 : staticVar.fullwidth(context)  ,
            height: staticVar.golobalHigth(context) * .8,
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
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: staticVar.isItWebPlatform(context) ?  staticVar.golobalWidth(context) * .4 : null ,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Despre noi",
                    style: TextStyle(
                        fontSize: 36.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Self Storage este soluția ideală pentru nevoile de depozitare atât pentru persoane fizice cât și juridice.',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Cum ne diferențiem?',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                        '- Asigurăm monitorizare permanentă',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Temperatura locației este controlată',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Închirierea boxei se face în doar câteva minute, complet online',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Îți poți găzdui chiar și sediul social al firmei în boxa ta',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Locație centrală',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Ce poți depozita în boxa ta?',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                        '- Actele companiei fără riscul de a se deteriora datorită umezelii sau diferențelor extreme de temperatură',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Piese de mobilier și alte obiecte personale de care nu mai ai loc prin casă',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Motocicleta, anvelopele de iarnă, bicicletele tale și ale celor mici... toate într-un singur depozit',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        '- Practic poți depozita orice, doar să alegi dimensiunea potrivită pentru boxa ta.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Cu selfstorage-ul nostru, aveți posibilitatea de a gestiona spațiul dvs. în mod eficient și de a păstra lucrurile importante în condiții sigure.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}
