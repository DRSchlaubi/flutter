// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'template.dart';

class ProgressIndicatorTemplate extends TokenTemplate {
  const ProgressIndicatorTemplate(super.blockName, super.fileName, super.tokens, {
    super.colorSchemePrefix = '_colors.',
  });

  @override
  String generate() => '''
class _Circular${blockName}DefaultsM3 extends ProgressIndicatorThemeData {
  _Circular${blockName}DefaultsM3(this.context);

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  Color get color => ${componentColor('md.comp.progress-indicator.active-indicator')};

  @override
  Color get circularTrackColor => ${componentColor('md.comp.progress-indicator.track')};
}

class _Linear${blockName}DefaultsM3 extends ProgressIndicatorThemeData {
  _Linear${blockName}DefaultsM3(this.context);

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  Color get color => ${componentColor('md.comp.progress-indicator.active-indicator')};

  @override
  Color get linearTrackColor => ${componentColor('md.comp.progress-indicator.track')};

  @override
  double get linearMinHeight => ${getToken('md.comp.progress-indicator.track.thickness')};
}
''';
}
