import 'package:flutter/material.dart';


class CouponsPage extends StatelessWidget {
  const CouponsPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Bob\'s Fã'),
      leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      actions:<Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      ],
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Coupons', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
