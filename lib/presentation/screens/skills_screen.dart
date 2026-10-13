import 'package:flutter/material.dart';
import 'package:my_profile/domain/skill.dart';
import 'package:my_profile/presentation/widgets/skill_item_list.dart';

class SkillsScreen extends StatelessWidget {
  final List<Skill> skills;

  const SkillsScreen({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todas mis tecnologías')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: skills.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return SkillItemList(skill: skills[index]);
        },
      ),
    );
  }
}
