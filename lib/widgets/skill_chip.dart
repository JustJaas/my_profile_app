import 'package:flutter/material.dart';
import '../models/skill.dart';

class SkillChip extends StatelessWidget {
  final Skill skill;
  final VoidCallback onToggleFavorite;

  const SkillChip({
    super.key,
    required this.skill,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggleFavorite,
      child: Chip(
        label: Text(skill.name),
        backgroundColor: skill.isFavorite
            ? Colors.amber[200]
            : Colors.grey[200],
        deleteIcon: Icon(
          skill.isFavorite ? Icons.star : Icons.star_border,
          size: 18,
        ),
        onDeleted: onToggleFavorite,
      ),
    );
  }
}
