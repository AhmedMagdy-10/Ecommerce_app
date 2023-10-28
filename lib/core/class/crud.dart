import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/functions/chect_connection.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> getData(String url, Map body) async {
    try {
      if (await checkInternetConnection()) {
        var response = await http.post(Uri.parse(url), body: body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responseBody = jsonDecode(response.body);

          return right(responseBody);
        } else {
          return left(StatusRequest.serverFailure);
        }
      } else {
        return left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return left(StatusRequest.serverFailure);
    }
  }
}
