import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/core/providers.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UserDesc extends ConsumerWidget {
  const UserDesc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coreSettings = ref.watch(coreSettingsProvider);

    return coreSettings.when(
      data: (data) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${data.userName} (${data.githubUserName})",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 5),
            Text(
              data.introduction,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            const Text("Contact", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 5),
            InkWell(
              onTap: () async {
                final githubUrl = "https://github.com/${data.githubUserName}";
                if (await canLaunchUrlString(githubUrl)) {
                  await launchUrlString(githubUrl);
                }
              },
              child: Text(" - [GitHub Link]", style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
            const SizedBox(height: 5),
            Text(" - [Email] ${data.email}"),
          ],
        );
      },
      error: (err, st) => Container(),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
