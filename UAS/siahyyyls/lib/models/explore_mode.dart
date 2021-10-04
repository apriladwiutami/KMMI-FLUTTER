part 'ingredient.dart';
part 'instruction.dart';

class ModeCardType {
  static const String card1 = 'card1';
  static const String card2 = 'card2';
  static const String card3 = 'card3';
}

class ExploreMode {
  String cardType;
  String title;
  String subtitle;
  String backgroundImage;
  String backgroundImageSource;
  String message;
  String authorName;
  String role;
  String profileImage;
  int durationInMinutes;
  String dietType;
  int calories;
  List<String> tags;
  String description;
  String source;
  String link;
  List<Ingredients> ingredients;
  List<Instruction> instructions;

  ExploreMode(
      {this.cardType,
      this.title,
      this.subtitle,
      this.backgroundImage,
      this.backgroundImageSource,
      this.message,
      this.authorName,
      this.role,
      this.profileImage,
      this.durationInMinutes,
      this.dietType,
      this.calories,
      this.tags,
      this.description,
      this.source,
      this.link,
      this.ingredients,
      this.instructions});

  ExploreMode.fromJson(Map<String, dynamic> json) {
    cardType = json['cardType'];
    title = json['title'];
    subtitle = json['subtitle'];
    backgroundImage = json['backgroundImage'];
    backgroundImageSource = json['backgroundImageSource'];
    message = json['message'];
    authorName = json['authorName'];
    role = json['role'];
    profileImage = json['profileImage'];
    durationInMinutes = json['durationInMinutes'];
    dietType = json['dietType'];
    calories = json['calories'];
    tags = json['tags'].cast<String>();
    description = json['description'];
    source = json['source'];
    link = json['link'];
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients.add(Ingredients.fromJson(v));
      });
    }
    if (json['instructions'] != null) {
      instructions = <Instruction>[];
      json['instructions'].forEach((v) {
        instructions.add(Instruction.fromJson(v));
      });
    }
  }
}
