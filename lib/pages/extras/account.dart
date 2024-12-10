import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Account')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Account', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
