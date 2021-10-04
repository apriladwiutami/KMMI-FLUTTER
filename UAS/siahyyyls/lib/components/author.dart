import 'package:flutter/material.dart';
import '../siahyyyls_theme.dart';

import 'circle_image.dart';

class Author extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const Author({
    Key key,
    this.authorName,
    this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  _AuthorState createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleImage(imageProvider: widget.imageProvider, imageRadius: 28),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: SiahyyylsTheme.lightTextTheme.headline2,
                ),
                Text(
                  widget.title,
                  style: SiahyyylsTheme.lightTextTheme.headline3,
                )
              ],
            ),
          ]),
          IconButton(
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
          ),
        ],
      ),
    );
  }
}
