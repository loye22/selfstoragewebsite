import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class CouponValidationLabel extends StatelessWidget {
  final bool isItAccepted ;

  const CouponValidationLabel({super.key, required this.isItAccepted});
  @override
  Widget build(BuildContext context) {
    return this.isItAccepted ? Container(
      width: staticVar.fullwidth(context) * .25 ,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFD5FFD4),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: Colors.green), // Adjust border color as needed
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green, // Adjust icon color as needed
                  ),
                ),
                Text(
                  ' Cod de reducere aplicat',
                  style: TextStyle(color: Colors.green), // Adjust text color as needed
                ),
              ],
            ),
          ),
        ],
      ),
    ) : Container(
      width: staticVar.fullwidth(context) * .25 ,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFE6E4),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: Colors.red), // Adjust border color as needed
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.error_outline,
                    color: Colors.red, // Adjust icon color as needed
                  ),
                ),
                Text(
                  'Introduceți un cod de cupon valid',
                  style: TextStyle(color: Colors.red), // Adjust text color as needed
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


