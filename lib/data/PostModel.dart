class PostModel {
  String? content;
  String? image;
  FacebookUser? instagramUser;
  PostModel.fromMap(Map map) {
    content = map['post_content'];
    image = map['post_image'];
    instagramUser = FacebookUser.fromMap(map['user']);
  }
}

class FacebookUser {
  String? image;
  String? name;
  FacebookUser.fromMap(Map map) {
    image = map['image'];
    name = map['name'];
  }
}