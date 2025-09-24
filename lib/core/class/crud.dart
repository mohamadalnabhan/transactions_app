import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:flutter_application_iddkk/core/class/status_request.dart';
import 'package:flutter_application_iddkk/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postRequest(
    String linkUri,
    Map data,
  ) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUri), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFail);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print("❌ Exception in postRequest: $e");
      return const Left(StatusRequest.serverException);
    }
  }
}
