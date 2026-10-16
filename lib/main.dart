import 'package:flutter/material.dart';
import 'package:my_profile/presentation/screens/home_screen.dart';
import 'package:my_profile/presentation/theme/app_theme.dart';
import 'package:my_profile/presentation/theme/theme_controller.dart';

void main() {
  runApp(MiPerfilDevApp(themeController: ThemeController()));
}

class MiPerfilDevApp extends StatelessWidget {
  const MiPerfilDevApp({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeController,
      builder: (BuildContext context, _) {
        return MaterialApp(
          title: 'Mi Perfil Dev',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.build(themeController.accent),
          home: HomeScreen(themeController: themeController),
        );
      },
    );
  }
}
