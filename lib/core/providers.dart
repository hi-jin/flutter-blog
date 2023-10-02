import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/domain/core_settings.dart';

final coreSettingsProvider = FutureProvider<CoreSettings>((ref) async {
  final coreSettingsString = await rootBundle.loadString("assets/settings/core.json");
  return CoreSettings.fromJson(jsonDecode(coreSettingsString));
});
