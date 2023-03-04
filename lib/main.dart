import 'package:flutter/material.dart';

import 'app/di/di.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModules();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
