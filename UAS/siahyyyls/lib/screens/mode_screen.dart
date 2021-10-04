import 'package:flutter/material.dart';
import '../api/siahyyyls_service.dart';
import '../components/components.dart';

class ModesScreen extends StatelessWidget {
  final exploreService = SiahyyylsService();

  ModesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getModes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ModeGridView(modes: snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}