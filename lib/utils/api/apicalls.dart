import 'dart:convert';
import 'package:hamon/utils/api/apiurl.dart';
import 'package:hamon/utils/controller/getxcontroller.dart';
import 'package:http/http.dart' as http;

void getsubjectfromserver() async {
  var apiUrl = fetchsubjectsfromserver;

  try {
    var response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);

      subjectlist.value = responseData['subjects'];
    } else {}
    // ignore: empty_catches
  } catch (e) {}
}

void getstudentsfromserver() async {
  var apiUrl = fetchstudentsfromserver;

  try {
    var response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      studentdatalist.value = responseData['students'];
    } else {}
    // ignore: empty_catches
  } catch (e) {}
}

void getclassroomfromserver() async {
  var apiUrl = fetchclassroomfromserver;

  try {
    var response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      clasroomlist.value = responseData['classrooms'];
    } else {}
    // ignore: empty_catches
  } catch (e) {}
}
