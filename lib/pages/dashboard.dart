import "package:durumi/page.dart";
import "package:flutter/material.dart";

class DashboardPage extends DurumiPage {
  const DashboardPage({super.key});

  @override
  final String title = "대시보드";

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Hello, world!"),
      ],
    );
  }
}
