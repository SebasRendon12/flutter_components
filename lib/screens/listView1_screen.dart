import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Ducati', 'Kawasaki', 'Yamaha', 'Honda', 'Benelli'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1Screen'),
        ),
        body: ListView(children: [
          ...options
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_right),
                  ))
              .toList()

          // ListTile(
          //   leading: Icon(Icons.accessible_forward_outlined),
          //   title: Text('Elemento 1'),
          // )
        ]));
  }
}
