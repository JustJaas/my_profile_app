import 'package:flutter/material.dart';
import 'package:my_profile/models/skill.dart';
import 'package:my_profile/widgets/profile_header.dart';
import 'package:my_profile/widgets/skill_chip.dart';

import 'skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Skill> _skills = defaultSkills();
  Color _accentColor = Colors.indigo;

  final List<Color> _palette = [
    Colors.indigo,
    Colors.teal,
    Colors.deepOrange,
    Colors.purple,
  ];

  void _cycleColor() {
    setState(() {
      final currentIndex = _palette.indexOf(_accentColor);
      _accentColor = _palette[(currentIndex + 1) % _palette.length];
    });
  }

  void _toggleFavorite(Skill skill) {
    setState(() {
      skill.isFavorite = !skill.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Perfil Dev',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: _accentColor,
        actions: [
          IconButton(
            tooltip: 'Cambiar tema',
            icon: const Icon(Icons.palette_outlined, color: Colors.white),
            onPressed: _cycleColor,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            ProfileHeader(
              name: 'Jaas',
              role: 'Desarrollador Flutter',
              accentColor: _accentColor,
            ),
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
                  .map(
                    (skill) => SkillChip(
                      skill: skill,
                      onToggleFavorite: () => _toggleFavorite(skill),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: _accentColor),
              icon: const Icon(Icons.list, color: Colors.white),
              label: const Text(
                'Ver todas mis tecnologías',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SkillsScreen(skills: _skills, color: _accentColor),
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
