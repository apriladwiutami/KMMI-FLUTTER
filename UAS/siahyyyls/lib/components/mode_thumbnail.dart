import 'package:flutter/material.dart';
import '../models/models.dart';

class ModeThumbnail extends StatelessWidget {
  final SimpleMode mode;

  const ModeThumbnail({Key key, this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ClipRRect(
                  child: Image.asset('${mode.dishImage}', fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12))),
          const SizedBox(height: 10),
          Text(mode.title,
              maxLines: 1, style: Theme.of(context).textTheme.bodyText1),
          Text(mode.duration, style: Theme.of(context).textTheme.bodyText1)
        ]));
  }
}
