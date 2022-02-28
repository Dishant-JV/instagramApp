class ModelSaveSharedpreference {
  String? photo;
  String? name;
  String? email;
  String? password;

  ModelSaveSharedpreference({this.photo, this.name, this.email, this.password});

  factory ModelSaveSharedpreference.fromJson(Map<String, dynamic> json) {
    return ModelSaveSharedpreference(
      photo: json['photo'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  // Map<String, dynamic> toJson() =>
  //     {'photo': photo, 'name': name, 'email': email, 'password': password};
}

