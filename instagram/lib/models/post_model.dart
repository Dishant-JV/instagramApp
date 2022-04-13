class PostModel {
  int? id;
  String? name;
  String? image;
  int? likes;
  int? hour;

  PostModel({this.id, this.name, this.image, this.likes, this.hour});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    likes = json['likes'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'image': image, 'likes': likes, 'hour': hour};
}
