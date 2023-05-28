import "package:dynamic_color/dynamic_color.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ThemedApp extends StatelessWidget {
  const ThemedApp({
    super.key,
    required this.title,
    required this.home,
  });

  final String title;
  final Widget home;

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) {
        final ThemeData lightTheme = ThemeData(
          useMaterial3: true,
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              GoogleFonts.roboto(
                color: lightColorScheme?.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          colorScheme: lightColorScheme?.harmonized(),
          textTheme: GoogleFonts.robotoTextTheme(ThemeData.light().textTheme),
        );
        final ThemeData darkTheme = ThemeData(
          useMaterial3: true,
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              GoogleFonts.roboto(
                color: darkColorScheme?.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          colorScheme: darkColorScheme?.harmonized(),
          textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
        );

        return MaterialApp(
          title: title,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: home,
        );
      },
    );
  }
}
