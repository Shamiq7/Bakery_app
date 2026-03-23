import 'package:Bakery_app/homepage.dart';
import 'package:Bakery_app/loginpg.dart';
import 'package:Bakery_app/provider/Filterlogic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  debugPrintRebuildDirtyWidgets = true;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Loginpg());
  }
}
