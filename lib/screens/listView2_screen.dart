import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Ducati', 'Kawasaki', 'Yamaha', 'Honda', 'Benelli'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('ListView2Screen')),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_right, color: Colors.indigo),
            onTap: () {
              final bike = options[i];
              print(bike);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
