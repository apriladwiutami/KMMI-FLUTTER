import 'package:flutter/material.dart';
import '../api/siahyyyls_service.dart';
import '../components/components.dart';

class ExploreScreen extends StatelessWidget {
  final fashService = SiahyyylsService();

  ExploreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fashService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(scrollDirection: Axis.vertical, children: [
              TodayModeListView(modes: snapshot.data.todayModes),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: snapshot.data.friendPosts)
            ]);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
