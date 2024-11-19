import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Home')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home Page', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 20,),
          FilledButton(onPressed: () => {}, child: const Text("Hi there!")),
        ],
      ),
    ),
  );
}
