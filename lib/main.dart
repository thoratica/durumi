import "package:durumi/state.dart";
import "package:durumi/themed_app.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "pages/home.dart";

void main() => runApp(const DurumiApp());

class DurumiApp extends StatelessWidget {
  const DurumiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DurumiState(),
      child: const ThemedApp(title: "두루미", home: HomePage()),
    );
  }
}
