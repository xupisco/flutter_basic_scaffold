import 'package:flutter/material.dart';


class StuffPage extends StatelessWidget {
  const StuffPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Home')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Stuff', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
