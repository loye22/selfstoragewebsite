import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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


  // These are for Address collecting
  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController a3 = TextEditingController();
  TextEditingController a4 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
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

                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Adăugați detalii de contact" , style: GoogleFonts.roboto(fontSize : 24 , fontWeight : FontWeight.bold),) ,
                        SizedBox(height: 20,) ,
                        customeTextInput(label: "Numele complet *",controller:nameCont,),
                        customeTextInput(label: "Adresa de e-mail *",controller:emailCont,),
                         customeTextInput(label: "Confirmați adresa de e-mail *",controller:emailConfermationCont,),
                        customeTextInput(label: "Număr de telefon *",controller:phoneCont, IsItPhoneInput: true,),
                        Center(child: staticVar.divider(width: staticVar.fullwidth(context) * .3 )),
                        dropDownMarkentingData(),
                        Center(child: staticVar.divider(width: staticVar.fullwidth(context) * .3 )),
                        Container(width: staticVar.fullwidth(context) * .3 ,child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Introdu adresa ta" , style: GoogleFonts.roboto(fontSize: 24 , fontWeight :FontWeight.w600 ),),
                            SizedBox(height: 20,),
                            Text("Adresa ta *" ,style: GoogleFonts.roboto(fontSize: 15 , fontWeight :FontWeight.w500 )) ,
                            customeTextInput(label: "",controller:a1,addressTextController: [a1,a2,a3,a4],)
                          ],
                        )),




                      ],
                    ),
                  ),
                  Container(
                    height: staticVar.fullHigth(context),
                    width: staticVar.fullwidth(context) * .5,

                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



//// this is helper widget for dropdown menu items

class dropDownMarkentingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: staticVar.fullwidth(context) * .33,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Despre tine',
                style: TextStyle(
                  color: Color(0xFF18181B), // --c-black
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0, // Adjust font size as needed
                  letterSpacing: -0.0125, // --heading-letter-spacing
                ),
              ),
              SizedBox(height: 16.0), // Adjust spacing if needed
              Text(
                'Tip de depozitare',
                style: TextStyle(
                  color: Color(0xFF18181B), // --c-black
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0, // Adjust font size as needed
                ),
              ),
              SizedBox(height: 8.0), // Adjust spacing if needed
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true ,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder( // Border when the TextField is not focused

                    borderRadius: BorderRadius.circular(5.0), // Make it circular
                    borderSide: BorderSide(color: Colors.grey), // Gray border color
                  ),
                  hoverColor: Colors.white,

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.blue)

                  ),


                ),
                items: [
                  DropdownMenuItem(
                    value: 'domestic',
                    child: Text('Acasă'),
                  ),
                  DropdownMenuItem(
                    value: 'company',
                    child: Text('Afaceri'),
                  ),
                  DropdownMenuItem(
                    value: 'student',
                    child: Text('Student'),
                  ),
                  DropdownMenuItem(
                    value: 'charity',
                    child: Text('Caritate'),
                  ),
                  DropdownMenuItem(
                    value: 'local_authority',
                    child: Text('Autoritate locală'),
                  ),
                ],
                onChanged: (String? value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16.0), // Adjust spacing if needed
              Text(
                'Cum ati aflat de noi?',
                style: TextStyle(
                  color: Color(0xFF18181B), // --c-black
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0, // Adjust font size as needed
                ),
              ),
              SizedBox(height: 8.0), // Adjust spacing if needed
              DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true ,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder( // Border when the TextField is not focused

                    borderRadius: BorderRadius.circular(5.0), // Make it circular
                    borderSide: BorderSide(color: Colors.grey), // Gray border color
                  ),
                  hoverColor: Colors.white,

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.blue)

                  ),


                ),
                items: [
                  DropdownMenuItem(
                    value: 'used_before',
                    child: Text('Folosit înainte'),
                  ),
                  DropdownMenuItem(
                    value: 'recommendation',
                    child: Text('Recomandare'),
                  ),
                  DropdownMenuItem(
                    value: 'received_leaflet',
                    child: Text('Pliant primit'),
                  ),
                  DropdownMenuItem(
                    value: 'seen_building_signs',
                    child: Text('Saw clădire/semne'),
                  ),
                  DropdownMenuItem(
                    value: 'seen_advert',
                    child: Text('Am văzut reclamă'),
                  ),
                  DropdownMenuItem(
                    value: 'facebook_marketplace',
                    child: Text('Piața Facebook'),
                  ),
                  DropdownMenuItem(
                    value: 'google_search',
                    child: Text('cautare Google'),
                  ),
                  DropdownMenuItem(
                    value: 'other_online_search',
                    child: Text('Alte căutări online'),
                  ),
                  DropdownMenuItem(
                    value: 'social_media',
                    child: Text('Rețelele de socializare'),
                  ),
                  DropdownMenuItem(
                    value: 'email',
                    child: Text('E-mail'),
                  ),
                  DropdownMenuItem(
                    value: 'radio',
                    child: Text('Radio'),
                  ),
                  DropdownMenuItem(
                    value: 'other',
                    child: Text('Alte'),
                  ),
                ],
                onChanged: (String? value) {
                  // Handle onChanged event
                },
              ),
            ],
          ),
        ),
    );

  }
}

