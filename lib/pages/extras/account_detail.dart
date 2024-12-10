import 'package:flutter/material.dart';

class AccountDetailPage extends StatelessWidget {
  const AccountDetailPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Account detail')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Account Detail', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
