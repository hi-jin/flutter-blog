import 'package:flutter/material.dart';
import 'package:gitblog/ui/home/intro.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Intro(),
        ],
      ),
    );
  }
}
