import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../state.dart";

class NavigationBarComponent extends StatelessWidget {
  const NavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DurumiState>();

    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          selectedIcon: Icon(Icons.dashboard),
          label: "대시보드",
        ),
        NavigationDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: "설정",
        ),
      ],
      selectedIndex: appState.selectedIndex,
      onDestinationSelected: (int index) {
        appState.setSelectedIndex(index);
      },
    );
  }
}
