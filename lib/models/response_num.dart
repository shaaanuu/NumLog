import 'package:json_annotation/json_annotation.dart';

part 'response_num.g.dart';

@JsonSerializable()
class ResponseNum {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  ResponseNum({this.text, this.number, this.found, this.type});

  factory ResponseNum.fromJson(Map<String, dynamic> json) {
    return _$ResponseNumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseNumToJson(this);
}
