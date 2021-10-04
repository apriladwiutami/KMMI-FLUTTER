import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/models.dart';

class SiahyyylsService {
  Future<ExploreData> getExploreData() async {
    final todayModes = await _getTodayModes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayModes, friendPosts);
  }

  Future<List<ExploreMode>> _getTodayModes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_mode.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['modes'] != null) {
      final modes = <ExploreMode>[];
      json['modes'].forEach((v) {
        modes.add(ExploreMode.fromJson(v));
      });
      return modes;
    } else {
      return [];
    }
  }

  Future<List<Post>> _getFriendFeed() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_feed.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return [];
    }
  }

  Future<List<SimpleMode>> getModes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_mode.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['modes'] != null) {
      final modes = <SimpleMode>[];
      json['modes'].forEach((v) {
        modes.add(SimpleMode.fromJson(v));
      });
      return modes;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
