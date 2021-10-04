import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayModeListView extends StatelessWidget {
  final List<ExploreMode> modes;

  const TodayModeListView({Key key, this.modes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Fashion Terrorist👘',
          
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16),
          Container(
              height: 400,
              color: Colors.transparent,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: modes.length,
                  itemBuilder: (context, index) {
                    final Mode = modes[index];
                    return buildCard(Mode);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  })),
        ]));
  }

  Widget buildCard(ExploreMode mode) {
    if (mode.cardType == ModeCardType.card1) {
      return Card1(mode: mode);
    } else if (mode.cardType == ModeCardType.card2) {
      return Card2(mode: mode);
    } else if (mode.cardType == ModeCardType.card3) {
      return Card3(mode: mode);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}