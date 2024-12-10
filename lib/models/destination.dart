import 'package:flutter/material.dart';

class Destination {
  const Destination({ required this.label, required this.icon });

  final String label;
  final IconData icon;
  final fgColor = Colors.white;
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Bob\'s Fã', icon: Icons.confirmation_num),
  Destination(label: 'Delivery', icon: Icons.shopping_bag),
  Destination(label: 'Mais', icon: Icons.person),
];
