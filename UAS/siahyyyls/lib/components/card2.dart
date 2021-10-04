import 'package:flutter/material.dart';
import '../models/models.dart';

import '../siahyyyls_theme.dart';
import 'author.dart';

class Card2 extends StatelessWidget {
  final ExploreMode mode;

  const Card2({Key key, this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(mode.backgroundImage), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            Author(
                authorName: mode.authorName,
                title: mode.role,
                imageProvider: AssetImage(mode.profileImage)),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      mode.title,
                      style: SiahyyylsTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        mode.subtitle,
                        style: SiahyyylsTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
