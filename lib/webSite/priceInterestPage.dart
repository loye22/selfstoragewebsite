import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/webSite/webSiteHomePage.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/customeTextInput.dart';
import 'package:self_storage_web_site/widget/footer.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';
import 'package:self_storage_web_site/widget/reviews.dart';
import 'package:shared_preferences/shared_preferences.dart';

class priceInterestPage extends StatefulWidget {
  static final routeName = "/priceInterestPage";
  final String uniteType ;
  final String uniteDescription ;
  final String url ;

  const priceInterestPage({super.key,  this.uniteType = "4 metri pătrați",  this.uniteDescription = "10.80 metri cubi",   this.url = "https://www.selfstorage.ro/rails/active_storage/representations/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBcnY0IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f083c8277904915575f574b4a95fe2ab81f85da1/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFHQWFRR0EiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--3a1759201ad9502496c154d820145650c0738b62/40-sqft-unit.jpg"});

  @override
  State<priceInterestPage> createState() => _priceInterestPageState();
}

class _priceInterestPageState extends State<priceInterestPage> {
  TextEditingController nameCon = TextEditingController();

  TextEditingController emailCon = TextEditingController();

  TextEditingController emailConformCon = TextEditingController();

  TextEditingController phoneCon = TextEditingController();

  bool isLoading = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F5),
      body: SingleChildScrollView(
        child: Animate(
          effects: [FadeEffect(duration: Duration(milliseconds: 700))],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: staticVar.fullwidth(context) * .6,
                    height: staticVar.fullHigth(context),
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Center(
                      child: SizedBox(
                        width: staticVar.fullwidth(context) * .4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: staticVar.fullwidth(context) * .4,
                              child: Text(
                                "Vă rugăm să introduceți datele dumneavoastră pentru a vedea prețurile noastre",
                                style: GoogleFonts.roboto(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Vă putem contacta pentru a vă ajuta cu rezervarea.",
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            staticVar.divider(
                                width: staticVar.fullwidth(context) * .4),
                            Text(
                              "Vă Adăugați detalii de contact",
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            customeTextInput(
                              controller: nameCon,
                              label: "Numele complet *",
                              disableCenter: true,
                            ),
                            customeTextInput(
                              controller: emailCon,
                              label: "Adresa de e-mail *",
                              disableCenter: true,
                              isItEmail: true,
                            ),
                            customeTextInput(
                              controller: emailConformCon,
                              label: "Confirmați adresa de e-mail *",
                              disableCenter: true,
                              isItEmail: true,
                            ),
                            customeTextInput(
                              controller: phoneCon,
                              label: "Număr de telefon *",
                              disableCenter: true,
                              IsItPhoneInput: true,
                            ),
                           this.isLoading ? staticVar.loading() :  Button(
                              onTap: validateAndSendData,
                              text: "Arata preturi",
                              width: staticVar.fullwidth(context) * .3,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: staticVar.fullwidth(context) * .4,
                    // height: staticVar.fullHigth(context) * .7,
                    // decoration:
                    // BoxDecoration(border: Border.all(color: Colors.red)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0 , bottom: 18.0 ),
                          child: Container(
                            width: staticVar.fullwidth(context) * .3,
                            height: staticVar.fullHigth(context) * .2 ,
                            child:
                            Card(
                              surfaceTintColor: Colors.white,
                              elevation: 2,
                              child: Flex(
                                direction: staticVar.isItWebPlatform(context) ? Axis.horizontal : Axis.vertical ,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0 , right:5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widget.uniteType , style: GoogleFonts.roboto(fontSize: 24 , fontWeight :FontWeight.bold), ),
                                        Text(widget.uniteDescription , style: GoogleFonts.roboto(fontSize: 18, color :Colors.grey ,fontWeight :FontWeight.w500  ), )


                                      ],
                                    ),
                                  ),
                                  Container(width: staticVar.fullwidth(context) * 0.15, height: staticVar.fullHigth(context) * .2, child: Image.network(widget.url ,fit: BoxFit.scaleDown,) ,)
                                ],
                              ),
                            ),
                          ),
                        ) ,
                        ReviewCard(
                          name: 'Marius Apostol',
                          review:
                          'A fost extrem de simplu sa rezerv o boxa, a 2a zi eram deja cu motorul la boxa. Au incaput motocicleta, bicicletele copiilor, schiurile si toate articolele sportive/jucariile copiilor. Super convenabil, stiu ca motocicleta mea sta in siguranta cu o temperatura controlata si pot veni oricand sa o vad si sa mai umblu la ea.',
                          rating: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              MyFooter()
            ],
          ),
        ),
      ),
    );
  }


  Future<void> validateAndSendData() async {
    try{
      String name  = nameCon.text.trim();
      String email = emailCon.text.trim();
      String confirmEmail = emailConformCon.text.trim();
      String phone = phoneCon.text.trim();

      if (name.isEmpty) {
        MyDialog.showAlert(context, "Ok", "Numele este obligatoriu");
        return;
      }

      if (email.isEmpty) {
        MyDialog.showAlert(context, "Ok", "Emailul este obligatoriu");
        return;
      }

      if (!EmailValidator.validate(email)) {
        MyDialog.showAlert(context, "Ok", "Formatul emailului este invalid");
        return;
      }

      if (confirmEmail.isEmpty) {
        MyDialog.showAlert(context, "Ok", "Confirmarea emailului este obligatorie");
        return;
      }

      if (email != confirmEmail) {
        MyDialog.showAlert(context, "Ok", "Emailul și confirmarea emailului nu se potrivesc");
        return;
      }

      if (phone.isEmpty) {
        MyDialog.showAlert(context, "Ok", "Numărul de telefon este obligatoriu");
        return;
      }
      this.isLoading = true;
      setState(() {});

      await  FirebaseFirestore.instance.collection('marketing').add({
        'name': name,
        'email': email,
        'phone': phone,
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('email', true );

      Navigator.of(context).pushReplacementNamed(webSiteHomePage.routeName);

      // If all validations pass
      MyDialog.showAlert(context, "Ok", "Toate validările au fost trecute. Trimiterea datelor...");
      // Send your data here
    }
    catch(e){
      MyDialog.showAlert(context, "Ok", "Error: $e");

    }
    finally{
      this.isLoading = false ;
      setState(() {});

    }

  }
}
