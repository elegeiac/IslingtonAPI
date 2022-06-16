import 'dart:convert';
import 'dart:io';
import '../env.dart';
import './token.dart';
import '../model/model.dart';
import 'package:http/http.dart' as http;

class IslingtonApiService {
  Future getList() async {
    try {
      Map<String, String> headers = {
        "content-type": "application/json",
        "Authorization": "Bearer ${bearerToken.token}",
      };
      print("Token: ${bearerToken.token}");
      var decodedResponse;
      final response = await http.get(
        Uri.parse("${IslingtonEnv.URL}"),
        headers: headers,
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        decodedResponse = json.decode(response.body);
        var decodedResponseList = decodedResponse["list"];
        return decodedResponseList;
      } else {
        throw Exception('Failed to load data');
      }
    } on SocketException catch (_) {
      return Future.error('No Network Found');
    }
  }
}
