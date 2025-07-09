class Pokemon {
  final int id;
  final String name;
  final String img;
  final List<String> type;

  Pokemon({
    required this.id,
    required this.name,
    required this.img,
    required this.type,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      img: json['img'],
      type: List<String>.from(json['type']),
    );
  }
}
