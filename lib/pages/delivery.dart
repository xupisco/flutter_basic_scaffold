import 'package:flutter/material.dart';


class DeliveryPage extends StatelessWidget {
  const DeliveryPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Delivery')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Delivery', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
