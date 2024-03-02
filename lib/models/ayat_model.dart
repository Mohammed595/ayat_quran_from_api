class AyatModel {
  int id;
  String verseKey;
  String textIndopak;

  AyatModel({
    required this.id,
    required this.verseKey,
    required this.textIndopak,
  });

  factory AyatModel.toModel(Map<String, dynamic> json) {
    return AyatModel(
      id: json['id'],
      verseKey: json['verse_key'],
      textIndopak: json['text_indopak'],
    );
  }
}
