import "package:durumi/components/navigation_bar.dart";
import "package:durumi/page.dart";
import "package:durumi/pages/dashboard.dart";
import "package:durumi/pages/settings.dart";
import "package:durumi/state.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<DurumiState>();

    DurumiPage page;
    switch (appState.selectedIndex) {
      case 0:
        page = const DashboardPage();
        break;
      case 1:
        page = const SettingsPage();
        break;
      default:
        throw UnimplementedError("No widget for ${appState.selectedIndex}");
    }

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar.large(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                title: Text(page.title),
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert)),
                ],
              ),
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: page,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarComponent(),
    );
  }
}
