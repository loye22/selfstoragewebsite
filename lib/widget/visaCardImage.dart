



import 'package:flutter/cupertino.dart';

class visaCardImage extends StatelessWidget {
  const visaCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10) ,bottomLeft: Radius.circular(10))),
                child: Image.asset(
                  "assets/visa.png",
                  fit: BoxFit.scaleDown,
                ))
          ],
        ));
  }
}