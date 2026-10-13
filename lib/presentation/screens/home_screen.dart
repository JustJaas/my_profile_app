import 'package:flutter/material.dart';
import 'package:my_profile/presentation/screens/home_screen_state.dart';
import 'package:my_profile/presentation/theme/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  final ThemeController themeController;

  const HomeScreen({super.key, required this.themeController});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}
