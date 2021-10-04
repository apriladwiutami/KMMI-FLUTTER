class Post {
  String profileImageUrl;
  String comment;
  String fashionPictureUrl;
  String timestamp;

  Post(
      {this.profileImageUrl,
      this.comment,
      this.fashionPictureUrl,
      this.timestamp});

  Post.fromJson(Map<String, dynamic> json) {
    profileImageUrl = json['profileImageUrl'];
    comment = json['comment'];
    fashionPictureUrl = json['fashionPictureUrl'];
    timestamp = json['timestamp'];
  }
}
