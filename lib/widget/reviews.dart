


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class reviews extends StatefulWidget {
  const reviews({super.key});

  @override
  State<reviews> createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:staticVar.isItWebPlatform(context) ? 600 : staticVar.golobalHigth(context) * 2.5,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                "Ce spun clienții noștri",
                style:
                TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            Flex(
              direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
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
      width: staticVar.isItWebPlatform(context) ? staticVar.golobalWidth(context) * .35 : staticVar.golobalWidth(context)  ,
      height:staticVar.isItWebPlatform(context) ?  staticVar.golobalHigth(context) * .55 : staticVar.golobalHigth(context) * .7 ,
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
                  style:staticVar.isItWebPlatform(context) ? TextStyle(fontSize: staticVar.golobalWidth(context) * .012) : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
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