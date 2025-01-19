enum Genre {
  flutter,
  swift,
  aws,
  docker,
  unity,
  policy,
  contact,
}

extension GenreExtension on Genre {
  String get name {
    switch (this) {
      case Genre.flutter:
        return 'Flutter';
      case Genre.swift:
        return 'Swift UI';
      case Genre.aws:
        return 'AWS';
      case Genre.docker:
        return 'Docker';
      case Genre.unity:
        return 'Unity';
      case Genre.policy:
        return 'Policy';
      case Genre.contact:
        return 'Contact';
    }
  }
}

