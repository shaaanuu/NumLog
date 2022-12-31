import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numbers_api/response_num/response_num.dart';

Future<ResponseNum> getNumberFact({required int num}) async {
  final response = await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final bodyAsJSON = jsonDecode(response.body) as Map<String, dynamic>;
  final data = ResponseNum.fromJson(bodyAsJSON);
  return data;
}
