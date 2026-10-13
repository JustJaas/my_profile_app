import 'package:my_profile/domain/skill.dart';

class SkillsData {
  static List<Skill> defaultSkills() {
    return <Skill>[
      Skill(name: 'Dart'),
      Skill(name: 'Flutter', isFavorite: true),
      Skill(name: 'Git'),
      Skill(name: 'REST APIs'),
      Skill(name: 'MySQL'),
      Skill(name: 'Laravel'),
    ];
  }
}
