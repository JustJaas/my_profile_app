import 'package:flutter/material.dart';
import 'package:my_profile/data/skills_data.dart';
import 'package:my_profile/domain/skill.dart';
import 'package:my_profile/presentation/screens/skills_screen.dart';
import 'package:my_profile/presentation/theme/theme_controller.dart';
import 'package:my_profile/presentation/widgets/profile_header.dart';
import 'package:my_profile/presentation/widgets/skill_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<Skill> _skills = SkillsData.defaultSkills();

  void _toggleFavorite(Skill skill) {
    setState(() {
      skill.isFavorite = !skill.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil Dev'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Cambiar tema',
            icon: const Icon(Icons.palette_outlined),
            onPressed: widget.themeController.nextAccent,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: <Widget>[
            ProfileHeader(name: 'Jaas', role: 'Desarrollador Flutter'),
            const SizedBox(height: 24),
            const Text(
              'Habilidades favoritas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _skills
                  .map<Widget>(
                    (Skill skill) => SkillChip(
                      skill: skill,
                      onToggleFavorite: () => _toggleFavorite(skill),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              label: const Text('Ver todas mis tecnologías'),
              icon: const Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        SkillsScreen(skills: _skills),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
