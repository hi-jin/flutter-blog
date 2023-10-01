import 'package:flutter/material.dart';
import 'package:gitblog/ui/home/user_desc.dart';
import 'package:gitblog/ui/home/user_profile.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserProfile(radius: 150),
        SizedBox(height: 20),
        SizedBox(
          width: 400,
          child: UserDesc(),
        ),
      ],
    );
  }
}
