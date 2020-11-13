import 'package:flutter/material.dart';
import 'package:percent_indicator_crash/home_notifier.dart';
import 'package:percent_indicator_crash/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PercentIndicator Exception ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (_) => HomeNotifier(),
        child: HomePage(),
      ),
    );
  }
}
