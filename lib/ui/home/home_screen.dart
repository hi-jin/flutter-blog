import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/core/providers.dart';
import 'package:gitblog/ui/home/intro.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intro = ref.watch(markdownPostProvider("assets/index.md"));

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SingleChildScrollView(child: Intro()),
        const SizedBox(width: 20),
        Expanded(
          child: intro.when(
            data: (data) => data,
            error: (err, st) => Text(err.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}
