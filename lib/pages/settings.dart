import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Home')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Settings', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}