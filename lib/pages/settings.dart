import "package:durumi/page.dart";
import "package:flutter/material.dart";

class SettingsPage extends DurumiPage {
  const SettingsPage({super.key});

  @override
  final String title = "설정";

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Hello, world!"),
      ],
    );
  }
}
