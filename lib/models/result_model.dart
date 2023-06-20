class ResultModel {
  final String result;

  ResultModel.fromJson(Map<String, dynamic> json) : result = json["result"];
}
