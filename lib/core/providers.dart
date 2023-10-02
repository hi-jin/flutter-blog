import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/domain/core_settings.dart';
import 'package:gitblog/domain/post_asset.dart';

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

// TODO
final postsProvider = FutureProvider((ref) async {
  final root = PostDirectory(name: "assets", children: []);

  final AssetManifest manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
  for (final path in manifest.listAssets()) {
    print(path);

    if (!path.startsWith("assets/posts/")) continue;

    root.putAsset(path);
  }

  print(root.toString());
});
