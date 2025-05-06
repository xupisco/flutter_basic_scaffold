import 'package:flutter/material.dart';

import 'utils/constants.dart';
import 'utils/router.dart';
import 'utils/shared_preferences_helper.dart';
import 'ui/theme/bobs_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();

  runApp(const Bobs());
}

class Bobs extends StatelessWidget {
  const Bobs({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router (
      routerConfig: router,
      debugShowCheckedModeBanner: Constants.showDebugBanner,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
}
