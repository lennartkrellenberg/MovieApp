import 'package:MovieApp/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:MovieApp/service/movie_service.dart';
import 'dart:ui';
import 'package:MovieApp/movies_exception.dart';

final moviesFutureProvider =
    FutureProvider.autoDispose<List<Movie>>((ref) async {
  ref.maintainState = true;

  final movieService = ref.watch(movieServiceProvider);
  final movies = await movieService.getMovies();
  return movies;
});

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('upcomming Movies'),
      ),
      body: watch(moviesFutureProvider).when(
        error: (e, s) {
          if (e is MoviesException) {
            return _ErrorBody(message: e.message);
          }
          return _ErrorBody(message: "Oops, something unexpected happened");
        },
        loading: () => Center(child: CircularProgressIndicator()),
        data: (movies) {
          return RefreshIndicator(
            onRefresh: () {
              return context.refresh(moviesFutureProvider);
            },
            child: GridView.extent(
  primary: false,
  padding: const EdgeInsets.all(20),
  maxCrossAxisExtent: 200,
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
  childAspectRatio: 0.7,
  children: movies.map((movie) => _MovieBox(movie: movie)).toList()
          ));
        },
      ),
    );
  }
}

class _ErrorBody extends StatelessWidget {
  const _ErrorBody({
    Key key,
    @required this.message,
  })  : assert(message != null, 'A non-null String must be provided'),
        super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          ElevatedButton(
            onPressed: () => context.refresh(moviesFutureProvider),
            child: Text("Try again"),
          ),
        ],
      ),
    );
  }
}

class _MovieBox extends StatelessWidget {
  final Movie movie;

  const _MovieBox({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(movie.fullImageUrl,
        fit: BoxFit.fitWidth, width: double.infinity,
        );
  }
}
