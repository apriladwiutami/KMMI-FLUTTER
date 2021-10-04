import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class ModeGridView extends StatelessWidget {
  final List<SimpleMode> modes;

  const ModeGridView({Key key, this.modes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: GridView.builder(
            itemCount: modes.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 1500.0),
            itemBuilder: (context, index) {
              final simpleMode = modes[index];
              return ModeThumbnail(mode: simpleMode);
            }
          )
        );
  }
}
