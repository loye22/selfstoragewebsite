import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/customeTextInput.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';

class payingPage extends StatefulWidget {
  static final routeName = "/payingPage";

  const payingPage({super.key});

  @override
  State<payingPage> createState() => _payingPageState();
}

class _payingPageState extends State<payingPage> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController phoneCont = TextEditingController();
  TextEditingController emailConfermationCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: staticVar.fullHigth(context) * 2,
                  width: staticVar.fullwidth(context) * .5,
                  padding: EdgeInsets.only(top: 100),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                  child:  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Adăugați detalii de contact" , style: GoogleFonts.roboto(fontSize : 24 , fontWeight : FontWeight.bold),) ,
                        SizedBox(height: 20,) ,
                        customeTextInput(label: "Numele complet *",controller:nameCont,),
                        customeTextInput(label: "Adresa de e-mail *",controller:emailCont,),
                         customeTextInput(label: "Confirmați adresa de e-mail *",controller:emailConfermationCont,),
                        customeTextInput(label: "Număr de telefon *",controller:phoneCont, IsItPhoneInput: true,),

                      ],
                    ),
                  ),
                ),
                Container(
                  height: staticVar.fullHigth(context),
                  width: staticVar.fullwidth(context) * .5,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
