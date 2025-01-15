import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const TallyInterfaceApp());
}

class TallyInterfaceApp extends StatelessWidget {
  const TallyInterfaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tally Interface',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
