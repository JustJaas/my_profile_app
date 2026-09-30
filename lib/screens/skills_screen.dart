import 'package:flutter/material.dart';
import '../models/skill.dart';

class SkillsScreen extends StatelessWidget {
  final List<Skill> skills;
  final Color color;

  const SkillsScreen({super.key, required this.skills, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todas mis tecnologías',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: color,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: skills.length,
        separatorBuilder: (_, _) => const Divider(),
        itemBuilder: (context, index) {
          final skill = skills[index];
          return ListTile(
            title: Text(skill.name),
            trailing: skill.isFavorite
                ? const Icon(Icons.star, color: Colors.amber)
                : const Icon(Icons.star_border, color: Colors.grey),
          );
        },
      ),
    );
  }
}
