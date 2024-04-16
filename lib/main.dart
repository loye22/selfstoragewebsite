import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_storage_web_site/webSite/webSiteFaqPage.dart';
import 'package:self_storage_web_site/webSite/webSiteHomePage.dart';
import 'package:self_storage_web_site/webSite/webSiteUnitsPage.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: MaterialApp(
        navigatorObservers: [seoRouteObserver],
        theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme()
          // You can also configure other theme properties here
        ),
        debugShowCheckedModeBanner: false ,
        title: 'Flutter Demo',
        home:  webSiteFaqPage(),
        routes: {
          webSiteHomePage.routeName: (ctx) => webSiteHomePage(),
          webSiteFaqPage.routeName: (ctx) => webSiteFaqPage(),
          webSiteUnitsPage.routeName: (ctx) => webSiteUnitsPage(),

        },
      ),
    );
  }
}

