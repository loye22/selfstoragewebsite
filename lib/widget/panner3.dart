


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class UseCaseCard extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String body;

  const UseCaseCard({
    Key? key,
    required this.image,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
   //   decoration:BoxDecoration(border: Border.all(color: Colors.black)) ,
      width: staticVar.golobalWidth(context)  * .35,
      height: staticVar.golobalHigth(context) * .5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: staticVar.golobalWidth(context)  * .3,
            height: staticVar.golobalHigth(context) * .35,
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                alignment: Alignment.center,
                image: image,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextRenderer(
                  text : title,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  body,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}