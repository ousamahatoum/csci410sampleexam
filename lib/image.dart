import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    String url = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(title: const Text('Car Image'), centerTitle: true),
        body: Column(children: [
          Image.network(url, width: 500, height: 300, fit: BoxFit.fill)
        ]));
  }
}