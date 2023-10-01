import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/core/providers.dart';

class UserProfile extends ConsumerWidget {
  final double radius;

  const UserProfile({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coreSettings = ref.watch(coreSettingsProvider);

    return coreSettings.when(
      data: (data) {
        return CircleAvatar(
          radius: radius,
          backgroundImage: (data.profileImageUrl != null) ? NetworkImage(data.profileImageUrl!) : null,
          child: (data.profileImageUrl == null) ? const Icon(Icons.person) : null,
        );
      },
      error: (error, stackTrace) => CircleAvatar(
        radius: radius,
        child: const Icon(Icons.person),
      ),
      loading: () => CircleAvatar(
        radius: radius,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
