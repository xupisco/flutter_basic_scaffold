import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Search')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Search', style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}
