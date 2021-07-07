// To parse this JSON data, do
//
//     final filmModel = filmModelFromJson(jsonString);

import 'dart:convert';

FilmModel filmModelFromJson(String str) => FilmModel.fromJson(json.decode(str));

String filmModelToJson(FilmModel data) => json.encode(data.toJson());

class FilmModel {
    FilmModel({
        this.filmler,
        this.success,
    });

    List<Filmler> filmler;
    int success;

    factory FilmModel.fromJson(Map<String, dynamic> json) => FilmModel(
        filmler: List<Filmler>.from(json["filmler"].map((x) => Filmler.fromJson(x))),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "filmler": List<dynamic>.from(filmler.map((x) => x.toJson())),
        "success": success,
    };
}

class Filmler {
    Filmler({
        this.filmId,
        this.filmAd,
        this.filmYil,
        this.filmResim,
        this.kategoriId,
        this.yonetmenId,
    });

    String filmId;
    String filmAd;
    String filmYil;
    String filmResim;
    String kategoriId;
    String yonetmenId;

    factory Filmler.fromJson(Map<String, dynamic> json) => Filmler(
        filmId: json["film_id"],
        filmAd: json["film_ad"],
        filmYil: json["film_yil"],
        filmResim: json["film_resim"],
        kategoriId: json["kategori_id"],
        yonetmenId: json["yonetmen_id"],
    );

    Map<String, dynamic> toJson() => {
        "film_id": filmId,
        "film_ad": filmAd,
        "film_yil": filmYil,
        "film_resim": filmResim,
        "kategori_id": kategoriId,
        "yonetmen_id": yonetmenId,
    };
}
