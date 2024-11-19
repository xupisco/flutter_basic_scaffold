import 'package:flutter/material.dart';

class Destination {
  const Destination({ required this.label, required this.icon });

  final String label;
  final IconData icon;
  final fgColor = Colors.white;
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home_outlined),
  Destination(label: 'Stuff', icon: Icons.add_reaction_outlined),
  Destination(label: 'Search', icon: Icons.search),
  Destination(label: 'Settings', icon: Icons.settings_outlined),
];
