class SimpleMode {
  String dishImage;
  String title;
  String duration;
  String source;
  String links;
  List<String> information;

  SimpleMode(
      this.dishImage, this.title, this.duration, this.source, this.links, 
      this.information);

  SimpleMode.fromJson(Map<String, dynamic> json) {
    dishImage = json['dishImage'];
    title = json['title'];
    duration = json['duration'];
    source = json['source'];
    links = json['links'];
    information = json['information'].cast<String>();
  }
}
