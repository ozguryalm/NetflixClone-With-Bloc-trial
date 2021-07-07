import 'dart:async';

import 'package:bloc_denemeleri/data/film_service.dart';
import 'package:bloc_denemeleri/models/film_model.dart';

class FilmBloc {
  final filmStreamController = new StreamController.broadcast();

  Stream get getStream => filmStreamController.stream;

  getAllFilms() {
    return FilmService.getAllFilms();
    //return FilmService.getAllFilms();
    //Stream.periodic(Duration(milliseconds: 700)).asyncMap((event) => FilmService.getAllFilms());
  }
}

final filmBloc = FilmBloc();
