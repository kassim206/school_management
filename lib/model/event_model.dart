import 'package:cloud_firestore/cloud_firestore.dart';
EventModel? eventModel;
class EventModel{
  // String? clubName;
  String? postDescription;
  String? postId;
  List? likesList;
  DateTime? uploadedTime;
  String? postUrl;
  DocumentReference? postRef;
  EventModel(
      {
        // required this. clubName,
        required this.postDescription,
        required this.likesList,
        required this.postUrl,
        required this.uploadedTime,
        this.postId,
        this.postRef,
      });
  Map<String,dynamic>toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    // data["clubName"] = clubName;
    data["postId"] = postId;
    data["likes"] = likesList;
    data["postUrl"] = postUrl;
    data["ref"] = postRef;
    data["uploadedTime"] = uploadedTime;
    data["description"] = postDescription;

    return data;
  }
  EventModel.fromJson(Map<String, dynamic> json) {
    // clubName = json["clubName"] ?? '';
    postId = json["postId"] ?? '';
    likesList = json["likes"] ?? [];
    postRef = json["ref"]??null;
    postDescription = json["description"] ?? '';
    uploadedTime = json["uploadedTime"] == null
        ? DateTime.now()
        : json["uploadedTime"].toDate();
    postUrl = json["postUrl"] ?? "";

  }
  EventModel copyWith({
    // String? clubName,
    String? postDescription,
    List? likesList,
    DateTime? uploadedTime,
    String? postUrl,
    String? postId,
    DocumentReference? postRef,
  }
      )
  {
    return EventModel(
        // clubName:clubName??this.clubName,
        postDescription: postDescription??this.postDescription,
        likesList: likesList??this.likesList,
        postUrl: postUrl??this.postUrl,
        postRef:postRef??this.postRef,
        postId:postId??this.postId,
        uploadedTime: uploadedTime??this.uploadedTime);

  }
}