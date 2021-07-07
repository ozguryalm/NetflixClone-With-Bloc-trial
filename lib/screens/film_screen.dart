import 'package:bloc_denemeleri/blocs/film_bloc.dart';
import 'package:bloc_denemeleri/data/film_service.dart';
import 'package:bloc_denemeleri/models/film_model.dart';
import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({Key key}) : super(key: key);

  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filmler"),
        ),
        body: FutureBuilder(
            future: FilmService.getAllFilms(),
            initialData: films,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                films = snapshot.data;

                return StreamBuilder(
                  stream: filmBloc.getStream,
                  initialData: filmBloc.getAllFilms(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    return filmWidget(snapshot);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  FilmModel films ;

  Widget filmWidget(AsyncSnapshot<dynamic> snapshot) {
    return Center(child:films!=null? Text( films.filmler[0].filmAd):CircularProgressIndicator());
    //   if (snapshot.hasData) {
    //     // films = snapshot.data;
    //     //yabici(snapshot);
    //     return Center(child: Text(films.filmler[0].filmAd));
    //   } else
    //     return CircularProgressIndicator();
    // }

    // yabici(AsyncSnapshot snapshot) async {
    //   films = await snapshot.data;
    // }
  }
}
