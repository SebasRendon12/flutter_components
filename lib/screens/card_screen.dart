import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://images.ctfassets.net/x7j9qwvpvr5s/5sBu1Vbq12uBIlLzHuuiwQ/903161aad332b473e5219847860481bd/Hypermotard-SP-MY2021-01-gallery-1920x1080.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://www.formulamoto.es/wp-content/uploads/2021/05/ducatihypermotard950sp-38uc287662high.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              name: 'Una obra de la ingeniería',
              imageUrl:
                  'https://media.fastestlaps.com/ducati-hypermotard-950-sp.jpg',
            ),
            SizedBox(height: 200),
          ],
        ));
  }
}
