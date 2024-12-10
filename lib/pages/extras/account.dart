import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/routes.dart';

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
          const SizedBox(
            height: 20,
          ),
          FilledButton(
              onPressed: () => context.push('${Routes.extrasPage}/${Routes.accountPage}/${Routes.accountDetailPage}'),
              child: const Text("Detail!")
          ),
        ],
      ),
    ),
  );
}
