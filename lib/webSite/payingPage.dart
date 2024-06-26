import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/privacyPage.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:self_storage_web_site/widget/CouponValidationErrors.dart';
import 'package:self_storage_web_site/widget/button.dart';
import 'package:self_storage_web_site/widget/customeTextInput.dart';
import 'package:self_storage_web_site/widget/header.dart';
import 'package:self_storage_web_site/widget/myDialog.dart';
import 'package:self_storage_web_site/widget/priceSummaryCard.dart';
import 'package:self_storage_web_site/widget/selectDate.dart';
import 'dart:html' as html;
import 'package:email_validator/email_validator.dart';
import 'package:self_storage_web_site/widget/visaCardImage.dart';

class payingPage extends StatefulWidget {
  static final routeName = "/payingPage";
  final Map<String, dynamic> data;

  const payingPage(
      {super.key,
      this.data = const {
        "price": "22.22",
        "uniteData": {
          "unitTypeName": "18 metri pătrați",
          "description": "48.60 metri cubi"
        }
      }});

  @override
  State<payingPage> createState() => _payingPageState();
}

class _payingPageState extends State<payingPage> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController phoneCont = TextEditingController();
  TextEditingController emailConfermationCont = TextEditingController();
  TextEditingController moveInDateCont = TextEditingController();
  TextEditingController disocuntCodeCont = TextEditingController();

  // These are for Address collecting
  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController a3 = TextEditingController();
  TextEditingController a4 = TextEditingController();

  bool checkBox = false;
  bool disocuntMode = false;

  Map<String, dynamic> disocuntCoupon = {};

  Map<String, dynamic> couponValidation = {};

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
                    height: staticVar.fullHigth(context) * 2.5,
                    width: staticVar.fullwidth(context) * .5,
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Adăugați detalii de contact",
                          style: GoogleFonts.roboto(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        customeTextInput(
                          label: "Numele complet *",
                          controller: nameCont,
                        ),
                        customeTextInput(
                            label: "Adresa de e-mail *",
                            controller: emailCont,
                            isItEmail: true),
                        customeTextInput(
                          label: "Confirmați adresa de e-mail *",
                          controller: emailConfermationCont,
                          isItEmail: true,
                        ),
                        customeTextInput(
                          label: "Număr de telefon *",
                          controller: phoneCont,
                          IsItPhoneInput: true,
                        ),
                        Center(
                            child: staticVar.divider(
                                width: staticVar.fullwidth(context) * .3)),
                        dropDownMarkentingData(),
                        Center(
                            child: staticVar.divider(
                                width: staticVar.fullwidth(context) * .3)),
                        Container(
                            width: staticVar.fullwidth(context) * .3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Introdu adresa ta",
                                  style: GoogleFonts.roboto(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("Adresa ta *",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                customeTextInput(
                                  label: "",
                                  controller: a1,
                                  addressTextController: [a1, a2, a3, a4],
                                ),
                              ],
                            )),
                        Center(
                            child: staticVar.divider(
                                width: staticVar.fullwidth(context) * .3)),
                        Container(
                            width: staticVar.fullwidth(context) * .3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Solicitare rezervare",
                                  style: GoogleFonts.roboto(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                // SizedBox(height: 20,),
                                // customeTextInput(label: "Selectați o dată de mutare *\nÎn orice zi de astăzi până la 12 iunie.",controller:a1 ) ,
                                selectDate(
                                  label:
                                      "Selectați o dată de mutare *\nÎn orice zi de astăzi până la 12 iunie.",
                                  controller: moveInDateCont,
                                )
                              ],
                            )),
                        Center(
                            child: staticVar.divider(
                                width: staticVar.fullwidth(context) * .3)),
                        Container(
                          width: staticVar.fullwidth(context) * .3,
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vă rugăm să rețineți',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Nu îți vom percepe contravaloarea boxei până în ziua în care a fost programată mutarea. Anulează oricând înainte de acea dată, gratuit.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: checkBox,
                                    onChanged: (value) {
                                      this.checkBox = !this.checkBox;
                                      setState(() {});
                                    },
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Sunt de acord cu ',
                                        ),
                                        TextSpan(
                                          text: 'Termenii și Condițiile\n',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // Handle terms and conditions link tap
                                              // Add your navigation or action here
                                              html.window.open(
                                                  'https://firebasestorage.googleapis.com/v0/b/selfstorage-de099.appspot.com/o/docs%2FTermeni.pdf?alt=media&token=c1a3a972-74ce-467a-84ac-c456d32a0f9b',
                                                  'new tab');
                                            },
                                        ),
                                        TextSpan(
                                          text: ', ',
                                        ),
                                        TextSpan(
                                          text: 'Politica de Confidențialitate',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              // Handle privacy policy link tap
                                              // Add your navigation or action here
                                              html.window.open(
                                                  "http://selfstorage.web.app/#/privacyPage",
                                                  'new tab');
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              Button(
                                onTap: submit,
                                text: "Confirmați rezervarea acum",
                                width: staticVar.fullwidth(context) * .5,
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    'Payments are secure and encrypted.',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: staticVar.fullHigth(context) * 1.5 ,
                    width: staticVar.fullwidth(context) * .5,
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Card(
                          surfaceTintColor: Colors.white,
                          child: Container(
                            width: staticVar.fullwidth(context) * .28,
                            height: staticVar.fullHigth(context) * .85,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.data["uniteData"]
                                                  ?["unitTypeName"] ??
                                              "404NotFound",
                                          style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5.0),
                                        Text(
                                          widget.data["description"] ??
                                              "404Error",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "€" + widget.data["price"],
                                              style: GoogleFonts.roboto(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              "/lună+TVA",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Cod de reducere",
                                          style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            staticVar.fullwidth(context) * .1,
                                        width:
                                            staticVar.fullwidth(context) * .1,
                                        child: Image.network(
                                            fit: BoxFit.contain,
                                            "https://firebasestorage.googleapis.com/v0/b/selfstorage-de099.appspot.com/o/employees%2F2024-03-08%2008%3A14%3A53.838Z.jpg?alt=media&token=f4f22e4f-1f9b-43ce-a7ab-04961ed463b4"))
                                  ],
                                ),
                                Container(
                                  width: staticVar.fullwidth(context) * .25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: TextField(
                                            controller: disocuntCodeCont,
                                            maxLength: 21,
                                            decoration: InputDecoration(
                                              counterText: "",
                                              hintText:
                                                  'Introdu codul de reducere',
                                              border: InputBorder.none,
                                            ),
                                            keyboardType: TextInputType.text,
                                            textInputAction:
                                                TextInputAction.next,
                                            onSubmitted: (_) {
                                              // Callback when submitted
                                            },
                                          ),
                                        ),
                                      ),
                                      Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () async {
                                            await getDiscountRecord(
                                                code: disocuntCodeCont.text);
                                            print(
                                                this.disocuntCoupon.toString());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 14.0,
                                                horizontal: 16.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              // You can replace this with your desired color
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(4.0),
                                                bottomRight:
                                                    Radius.circular(4.0),
                                              ),
                                            ),
                                            child: Text(
                                              'Aplica',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                this.disocuntMode
                                    ? CouponValidationLabel(
                                        isItAccepted:
                                            this.disocuntCoupon.isNotEmpty,
                                      )
                                    : SizedBox.shrink(),
                                staticVar.divider(
                                    width: staticVar.fullwidth(context) * .25),
                                priceSummaryCard(
                                    amount: double.tryParse(
                                            widget.data["price"] ?? "0.0") ??
                                        0.0,
                                    discount: (this.disocuntCoupon["isItFixed"] != null &&
                                            this.disocuntCoupon["isItFixed"])
                                        ? double.tryParse(
                                                this.disocuntCoupon["amountOff"] ??
                                                    "0.0") ??
                                            0.0
                                        : double.tryParse(
                                                this.disocuntCoupon["percentOff"] ??
                                                    "0.0") ??
                                            0.0,
                                    discountType:
                                        (disocuntCoupon["isItFixed"] != null &&
                                                disocuntCoupon["isItFixed"])
                                            ? DiscountType.Fixed
                                            : DiscountType.Percentage,
                                    dataSummry: (v) {}),
                                visaCardImage()
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    if (this.nameCont.text.trim().isEmpty) {
      // if the the neme field is empty return back!
      MyDialog.showAlert(context, "Ok",
          "Vă rugăm să completați câmpul de nume și încercați din nou");
      return;
    }

    //Check if the email is valid c
    if (!EmailValidator.validate(this.emailCont.text.trim())) {
      MyDialog.showAlert(context, "Ok",
          "Vă rugăm să introduceți o adresă de email validă și încercați din nou");
      return;
    }

    // Check if the 2 emails match
    if (this.emailCont.text.trim() != this.emailConfermationCont.text.trim()) {
      MyDialog.showAlert(context, "Ok",
          "Vă rugăm să vă asigurați că ambele adrese de email pe care le-ați introdus sunt potrivite");
      return;
    }

    // Check the phoneNr is not empty
    if (this.phoneCont.text.trim().isEmpty) {
      MyDialog.showAlert(
          context, "Ok", "Vă rugăm să introduceți numărul de telefon.");
      return;
    }
  }

  DiscountType getDiscountType(Map<String, dynamic> data) {
    if (data.containsKey('amountOff')) {
      return DiscountType.Fixed;
    }
    return DiscountType.Percentage;
  }

  Future<Map<String, dynamic>> getDiscountRecord({required String code}) async {
    // Access Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      this.disocuntMode = true;
      this.disocuntCoupon = {};
      // Query the "discount" collection where the "code" field matches the provided code
      QuerySnapshot querySnapshot = await firestore
          .collection('discount')
          .where('code', isEqualTo: code)
          .get();

      // Check if any documents match the query
      if (querySnapshot.docs.isNotEmpty) {
        // Validate the coupon
        this.couponValidation =
            querySnapshot.docs.first.data() as Map<String, dynamic>;
        bool isValid =
            couponValidator(coupon: this.couponValidation)["isValid"];
        print(couponValidator(coupon: this.couponValidation));
        if (!isValid) {
          // in case the coupon is not valid for what ever reason retun ;;;
          this.disocuntCoupon = {};
          setState(() {});
          return {};
        }

        // Return the data of the first document found as a Map<String, dynamic>
        this.disocuntCoupon =
            querySnapshot.docs.first.data() as Map<String, dynamic>;
        setState(() {});
        return querySnapshot.docs.first.data() as Map<String, dynamic>;
      } else {
        // If no matching documents are found, return null
        this.disocuntCoupon = {};
        setState(() {});
        return {};
      }
    } catch (error) {
      // Handle any errors
      print('Error fetching discount record: $error');
      MyDialog.showAlert(
          context, "Ok", "Error fetching discount record: $error");
      return {};
    }
  }

  Map<String, dynamic> couponValidator({required dynamic coupon}) {
    // Return True for valid coupon and false otherwise
    // This function will check if the coupon is valid or not ,
    // for example it will check that the coupon is not expired
    // and its not used in case its on time use only .... etc
    if (coupon == null) {
      return {"reason": "Coupon not found", "isValid": false};
    }
    try {
      if (coupon['couponName'] == 'None') {
        return {"reason": "No discount selected  ", "isValid": false};
      }

      // this will hanel if the coupon one time used
      if (coupon['durationType'] != null &&
          coupon['durationType'] == 'once' &&
          coupon['isItUsed']) {
        return {
          "reason":
              "This coupon has already been used and is valid for one-time use only.",
          "isValid": false
        };
      }

      // this will handel the expierd coupon on dates
      if (coupon['expirationType'] != null &&
          coupon['expirationType']["expDate"] != null &&
          isTimestampExpired(coupon['expirationType']["expDate"])) {
        return {"reason": "This coupon is expired!", "isValid": false};
      }
      return {"reason": "", "isValid": true};
    } catch (e) {
      MyDialog.showAlert(context, "Ok", "Error $e");
      return {};
    }
  }

  bool isTimestampExpired(Timestamp expiryTimestamp) {
    // Get the current timestamp
    Timestamp currentTimestamp = Timestamp.now();

    // Convert the Firebase Timestamp to a DateTime object
    DateTime expiryDateTime = expiryTimestamp.toDate();

    // Compare the expiry date to the current date
    if (currentTimestamp.seconds > expiryTimestamp.seconds) {
      // Timestamp is expired
      return true;
    } else {
      // Timestamp is not expired
      return false;
    }
  }
}



//// this is helper widget for dropdown menu items

class dropDownMarkentingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: staticVar.fullwidth(context) * .33,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        // Adjust padding as needed
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
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  // Border when the TextField is not focused

                  borderRadius: BorderRadius.circular(5.0), // Make it circular
                  borderSide:
                      BorderSide(color: Colors.grey), // Gray border color
                ),
                hoverColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
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
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  // Border when the TextField is not focused

                  borderRadius: BorderRadius.circular(5.0), // Make it circular
                  borderSide:
                      BorderSide(color: Colors.grey), // Gray border color
                ),
                hoverColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
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
