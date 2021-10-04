import 'package:flutter/material.dart';
import '../siahyyyls_theme.dart';
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final ExploreMode mode;

  const Card1({Key key, this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              mode.subtitle,
              style: SiahyyylsTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                mode.title,
                style: SiahyyylsTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                mode.message,
                style: SiahyyylsTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                mode.authorName,
                style: SiahyyylsTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(mode.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
