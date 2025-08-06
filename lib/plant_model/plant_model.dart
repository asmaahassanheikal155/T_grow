class AIModel {
  int? id;
  String? date;
  String? imageUrl;
  String? treatmentTitle;
  String? treatmentKey;
  String? treatmentContent;

  AIModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    imageUrl = json['imageUrl'];
    treatmentTitle = json['treatmentTitle'];
    treatmentKey = json['treatmentKey'];
    treatmentContent = json['treatmentContent'];
  }
}
