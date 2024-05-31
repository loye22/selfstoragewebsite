import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/FQApage.dart';
import 'package:self_storage_web_site/webSite/payingPage.dart';
import 'package:self_storage_web_site/webSite/priceInterestPage.dart';
import 'package:self_storage_web_site/webSite/privacyPage.dart';
import 'package:self_storage_web_site/webSite/uniteReserve.dart';
import 'package:self_storage_web_site/webSite/webSiteHomePage.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:self_storage_web_site/widget/MyCustomScrollBehavior.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
        apiKey: "AIzaSyDADuka9RJf0g7_xsWOreV71phJX92oN98",
        authDomain: "selfstorage-de099.firebaseapp.com",
        projectId: "selfstorage-de099",
        storageBucket: "selfstorage-de099.appspot.com" ,
        messagingSenderId: "32695980573",
        appId: "1:32695980573:web:0cc928459c20b115d92cf4",
        measurementId: "G-LREPB78HB4"
    ),
  );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme()
          // You can also configure other theme properties here
        ),
        debugShowCheckedModeBanner: false ,
        title: 'SelfStorage Romania',
        home:  webSiteHomePage(),
        routes: {
          webSiteHomePage.routeName: (ctx) => webSiteHomePage(),
          webSiteUnitsPage.routeName: (ctx) => webSiteUnitsPage(),
          uniteReserve.routeName: (ctx) => uniteReserve(),
          privacyPage.routeName: (ctx) => privacyPage(),
          FQApage.routeName: (ctx) => FQApage(),
          priceInterestPage.routeName: (ctx) => priceInterestPage(),

        },
      ),
    );
  }
}

