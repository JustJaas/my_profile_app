class Skill {
  final String name;
  bool isFavorite;

  Skill({required this.name, this.isFavorite = false});
}

List<Skill> defaultSkills() {
  return [
    Skill(name: 'Dart'),
    Skill(name: 'Flutter', isFavorite: true),
    Skill(name: 'Git'),
    Skill(name: 'REST APIs'),
    Skill(name: 'MySQL'),
    Skill(name: 'Laravel'),
  ];
}
