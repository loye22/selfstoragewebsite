import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:self_storage_web_site/webSite/staticVar.dart';

class copyTextWithFeedback extends StatelessWidget {
  final String text;
  final String feedbackText;

  copyTextWithFeedback({
    required this.text,
    this.feedbackText = 'Text copied to clipboard!',
  });

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(feedbackText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Change cursor to text when hovered over
      child: GestureDetector(
        onTap: () {
          _copyToClipboard(context, text);
        },
        child: Container(
          child: Text(
            text,
            style: TextStyle(fontSize: 16.0, color: staticVar.themeColor),
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:self_storage_web_site/webSite/staticVar.dart';
//
// class copyTextWithFeedback extends StatelessWidget {
//   final String text;
//    String feedbackText;
//
//   copyTextWithFeedback({
//     required this.text,
//     this.feedbackText = 'Text copied to clipboard!',
//   });
//
//   void _copyToClipboard(BuildContext context, String text) {
//     Clipboard.setData(ClipboardData(text: text));
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(feedbackText),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _copyToClipboard(context, text);
//       },
//       child: Container(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 16.0 , color: staticVar.themeColor),
//         ),
//       ),
//     );
//   }
// }
