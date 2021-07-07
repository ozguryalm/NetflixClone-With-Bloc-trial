import 'package:bloc_denemeleri/models/film_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FilmService {
  static FilmModel filmler;

  static FilmService _singleton = FilmService._singleton;
  factory FilmService() {
    return _singleton;
  }
  FilmService._internal();

  //static Future<List<FilmModel>> getAllFilms() async {
  static Future<FilmModel> getAllFilms() async {

    debugPrint("Requesting");

    Uri url = Uri.parse("https://ozguryalim.site/services/tum_filmler.php");

    try {
      var response = await http.Client().get(url);
      if (response.statusCode == 200) {
        debugPrint("Request sccesfull");
        filmler = filmModelFromJson(response.body);
        debugPrint(filmler.filmler[0].filmYil);
        return filmler;
        // return filmListFromJson(json.decode(response.body));
      } else {
        debugPrint("Request fail");
        //return filmler;
      }
    } catch (e) {
      debugPrint("Service Error: $e");
    }
    //return filmler;
  }

  // static FilmModel getfilms() {
  //   getAllFilms();

  //   //final jsonWeather = jsonDecoded["main"];

  //   return filmler;
  // }

}

List<FilmModel> filmListFromJson(dynamic str) => List<FilmModel>.from(
      (str).map(
        (x) => FilmModel.fromJson(x),
      ),
    );
