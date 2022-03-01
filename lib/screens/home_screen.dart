import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Home')),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_alarms),
                title: const Text('Nombre ruta'),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView1Screen());
                  Navigator.pushNamed(context, 'listview1');
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 100));
  }
}
