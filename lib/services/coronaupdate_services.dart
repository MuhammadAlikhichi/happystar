import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/models/coronamodels.dart';
import 'package:http/http.dart' as http;

class CoronaupdateServices {
  List<Coronaupdate>? coronaupdate;
  Future<List<Coronaupdate>> getCoronaUpdate() async {
    http.Response response = await http
        .get(Uri.parse('https://covid19.mathdro.id/api/daily/2020-01-27'));
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = (jsonDecode(response.body));
      debugPrint('response  --->$data');
      return List<Coronaupdate>.from(data.map((e) => Coronaupdate.fromJson(e)))
          .toList();
    }
    return [];
  }
}
