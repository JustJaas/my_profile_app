import 'package:flutter/material.dart';
import 'package:my_profile/domain/skill.dart';

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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onToggleFavorite,
      child: Chip(
        label: Text(skill.name),
        backgroundColor: skill.isFavorite ? colorScheme.primaryContainer : null,
        deleteIcon: Icon(
          skill.isFavorite ? Icons.star : Icons.star_border,
          size: 18,
        ),
        onDeleted: onToggleFavorite,
      ),
    );
  }
}
