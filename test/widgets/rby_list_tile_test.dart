import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rby/rby.dart';

import '../setup/setup.dart';

void main() {
  group('$RbyListTile', () {
    goldenTest(
      'renders correctly',
      fileName: 'rby_list_tile',
      pumpWidget: pumpWithTheme,
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints.tightFor(width: 465),
        columns: 1,
        children: [
          GoldenTestScenario(
            name: 'with title',
            child: const RbyListTile(
              title: Text('title'),
            ),
          ),
          GoldenTestScenario(
            name: 'with title and subtitle',
            child: const RbyListTile(
              title: Text('title'),
              subtitle: Text('subtitle'),
            ),
          ),
          GoldenTestScenario(
            name: 'with leading icon',
            child: const RbyListTile(
              title: Text('title'),
              leading: Icon(Icons.chevron_right_rounded),
            ),
          ),
          GoldenTestScenario(
            name: 'with trailing icon',
            child: const RbyListTile(
              title: Text('title'),
              trailing: Icon(Icons.chevron_left_rounded),
            ),
          ),
        ],
      ),
    );
  });
}
