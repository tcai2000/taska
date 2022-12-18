class StoryModel {
  int? id;
  String? fullName;
  String? userName;
  String? imageUrl;
  bool? isView;
  List<String>? listStory;

  StoryModel({
    this.id,
    this.fullName,
    this.userName,
    this.imageUrl,
    this.isView,
    this.listStory,
  });

  StoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    userName = json['userName'];
    imageUrl = json['imageUrl'];
    isView = json['isView'];
    listStory = json['listStory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['fullName'] = fullName;
    data['userName'] = userName;
    data['imageUrl'] = imageUrl;
    data['isView'] = isView;
    data['listStory'] = listStory;
    return data;
  }
}
