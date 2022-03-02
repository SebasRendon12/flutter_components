import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primaryColor,
            ),
            title: Text('Titulo'),
            subtitle: Text(
                'Laboris elit mollit proident aliquip nulla non. Ipsum nulla cupidatat ex ad ut nisi do laboris tempor tempor do ullamco minim.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => {}, child: const Text('Cancel')),
                TextButton(onPressed: () => {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
