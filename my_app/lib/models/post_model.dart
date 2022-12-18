class PostModel {
  String? id;
  String? username;
  List<String>? imagePostList;
  String? description;
  List<String>? userFavoriteList;

  PostModel(
      {this.id,
      this.username,
      this.imagePostList,
      this.description,
      this.userFavoriteList});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    imagePostList = json['imagePostList'];
    description = json['description'];
    userFavoriteList = json['userFavoriteList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['username'] = username;
    data['imagePostList'] = imagePostList;
    data['description'] = description;
    data['userFavoriteList'] = userFavoriteList;
    return data;
  }
}
