import 'package:flutter/cupertino.dart';

class webSiteHomePage extends StatefulWidget {
  static final  routeName = "/webSiteHomePage" ;
  const webSiteHomePage({super.key});

  @override
  State<webSiteHomePage> createState() => _webSiteHomePageState();
}

class _webSiteHomePageState extends State<webSiteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('home page'),);
  }
}
