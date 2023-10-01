import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitblog/core/app_routes.dart';
import 'package:gitblog/ui/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return SelectionArea(
            child: Scaffold(
              appBar: AppBar(),
              body: child,
            ),
          );
        },
        routes: [
          GoRoute(
            name: Routes.home,
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
        ],
      ),
    ],
  ),
);
