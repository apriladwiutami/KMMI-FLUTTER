import 'package:flutter/material.dart';
import 'siahyyyls_theme.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const Siahyyyls());
}

class Siahyyyls extends StatelessWidget {
  const Siahyyyls({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = SiahyyylsTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIAHYYYLS',
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
