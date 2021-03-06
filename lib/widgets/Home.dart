import 'package:buy_vision_crossplatform/resources/strings.dart';
import 'package:buy_vision_crossplatform/resources/TextStyles.dart';
import 'package:buy_vision_crossplatform/widgets/BarcodeScanner.dart';
import 'package:buy_vision_crossplatform/widgets/Preview.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(12),
        
          child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CameraScreen();
                }));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.zoom_in, size: 200, semanticLabel: str_help_read),
                const Text(str_help_read, semanticsLabel: "", textAlign: TextAlign.center, style: styleMenu)
              ])),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(12),
          child: OutlinedButton(
            onPressed: () {
              BarcodeScanner().launchPreviewPage(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Icon(Icons.qr_code_scanner,
                  size: 200, semanticLabel: str_help_search),
              const Text(str_help_search, semanticsLabel: "", textAlign: TextAlign.center, style: styleMenu)
            ])))),
      ],
    ));
  }
}
