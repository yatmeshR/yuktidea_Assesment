import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yuktidea/constant/constant.dart';
import 'package:yuktidea/modal/condition_modal/condition_modal.dart';

class ApiServices{

  // Api request to get the terms and conditions
  Future<ConditionModal> getCondition() async {
    final response = await http.get(Uri.parse(
        ApiConstants.baseUrl +  '/terms-conditions'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ConditionModal.fromJson(data);
    } else {
      throw Exception('Failed to load images');
    }
  }
}