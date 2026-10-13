import 'package:flutter/material.dart';
import 'package:my_profile/domain/skill.dart';

class SkillItemList extends StatelessWidget {
  final Skill skill;

  const SkillItemList({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(skill.name),
      trailing: skill.isFavorite
          ? Icon(Icons.star, color: colorScheme.primary)
          : Icon(Icons.star_border, color: colorScheme.outline),
    );
  }
}
