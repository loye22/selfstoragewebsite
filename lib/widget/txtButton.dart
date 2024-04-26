import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class txtButton extends StatelessWidget {
  final String txt ;
  final Function onTap ;



  const txtButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){this.onTap();}, child: Text(this.txt ,style: staticVar.fontStyle1,)) ;
  }
}
