import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/domain/core_settings.dart';

final coreSettingsProvider = FutureProvider<CoreSettings>((ref) async {
  final coreSettingsString = await rootBundle.loadString("assets/settings/core.json");
  return CoreSettings.fromJson(jsonDecode(coreSettingsString));
});

final markdownPostProvider = FutureProvider.family<Markdown, String>((ref, path) async {
  final md = await rootBundle.loadString(path);

  return Markdown(
    data: md,
    selectable: true,
  );
});
