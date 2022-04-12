import 'dart:convert';

List<NormalPostModel> normalPostModelFromJson(String str) =>
    List<NormalPostModel>.from(
        json.decode(str).map((x) => NormalPostModel.fromJson(x)));

String normalPostModelToJson(List<NormalPostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NormalPostModel {
  NormalPostModel({
    this.id,
    this.title,
    this.subTitle,
    this.image,
    this.createdDate,
    this.modifiedDate,
    this.readTime,
    this.postOwner,
    this.subCategory,
    this.tag,
    this.likes,
  });

  int? id;
  String? title;
  String? subTitle;
  String? image;
  DateTime? createdDate;
  DateTime? modifiedDate;
  String? readTime;
  PostOwner? postOwner;
  String? subCategory;
  List<List<String>>? tag;
  List<int>? likes;

  factory NormalPostModel.fromJson(Map<String, dynamic> json) =>
      NormalPostModel(
        id: json["id"] as int,
        title: json["title"] as String,
        subTitle: json["subTitle"] as String,
        image: json["image"] as String,
        createdDate: DateTime.parse(json["created_date"]),
        modifiedDate: DateTime.parse(json["modified_date"]),
        readTime: json["read_time"] as String,
        subCategory: json["subCategory"] as String,
        // tag: List<List<String>>.from(
        //     json["tag"].map((x) => List<String>.from(x.map((x) => x)))),
        likes: List<int>.from(json["likes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subTitle": subTitle,
        "image": image,
        "created_date": createdDate!.toIso8601String(),
        "modified_date": modifiedDate!.toIso8601String(),
        "read_time": readTime,
        "post_owner": postOwner!.toJson(),
        "subCategory": subCategory,
        "tag": List<dynamic>.from(
            tag!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "likes": List<dynamic>.from(likes!.map((x) => x)),
      };
}

class PostOwner {
  PostOwner({
    this.id,
    this.fullName,
    this.username,
    this.profImage,
    this.studentId,
    this.backImage,
    this.departmentName,
    this.smallDesc,
    this.bioDesc,
    this.departmentClass,
    this.phoneNumber,
    this.adress,
    this.studentUserSelfInfo,
    this.instagram,
    this.twitter,
    this.github,
    this.linkedin,
    this.facebook,
    this.whatsapp,
    this.studentUserSocialMedia,
    // this.following,
    // this.followers,
  });

  int? id;
  String? fullName;
  String? username;
  String? profImage;
  String? studentId;
  String? backImage;
  String? departmentName;
  String? smallDesc;
  String? bioDesc;
  String? departmentClass;
  String? phoneNumber;
  String? adress;
  String? studentUserSelfInfo;
  String? instagram;
  String? twitter;
  String? github;
  String? linkedin;
  String? facebook;
  String? whatsapp;
  String? studentUserSocialMedia;
  // List<int>? following;
  // int? followers;

  factory PostOwner.fromRawJson(String str) =>
      PostOwner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostOwner.fromJson(Map<String, dynamic> json) => PostOwner(
        id: json["id"] as int,
        fullName: json["full_name"] as String,
        username: json["username"] as String,
        profImage: json["profImage"] as String,
        studentId: json["studentId"] as String,
        backImage: json["backImage"] as String,
        departmentName: json["departmentName"] as String,
        smallDesc: json["smallDesc"] as String,
        bioDesc: json["bioDesc"] as String,
        departmentClass: json["departmentClass"] as String,
        phoneNumber: json["phoneNumber"] as String,
        adress: json["adress"] as String,
        studentUserSelfInfo: json["studentUserSelfInfo"] as String,
        instagram: json["instagram"] as String,
        twitter: json["twitter"] as String,
        github: json["github"] as String,
        linkedin: json["linkedin"] as String,
        facebook: json["facebook"] as String,
        whatsapp: json["whatsapp"] as String,
        studentUserSocialMedia: json["studentUserSocialMedia"] as String,
        // following: List<int>.from(json["following"].map((x) => x)),
        // followers: json["followers"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "username": username,
        "profImage": profImage,
        "studentId": studentId,
        "backImage": backImage,
        "departmentName": departmentName,
        "smallDesc": smallDesc,
        "bioDesc": bioDesc,
        "departmentClass": departmentClass,
        "phoneNumber": phoneNumber,
        "adress": adress,
        "studentUserSelfInfo": studentUserSelfInfo,
        "instagram": instagram,
        "twitter": twitter,
        "github": github,
        "linkedin": linkedin,
        "facebook": facebook,
        "whatsapp": whatsapp,
        "studentUserSocialMedia": studentUserSocialMedia,
        // "following": List<dynamic>.from(following!.map((x) => x)),
        // "followers": followers,
      };
}
