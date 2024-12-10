import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/routes.dart';


class ExtrasPage extends StatelessWidget {
  const ExtrasPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Mais')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('More', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 20,),
          FilledButton(
            onPressed: () => context.push('${Routes.extrasPage}/${Routes.accountPage}'),
            child: const Text("Account")
          ),
        ],
      ),
    ),
  );
}
