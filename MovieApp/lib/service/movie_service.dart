import 'package:dio/dio.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:MovieApp/models/movie.dart';

final movieServiceProvider = Provider<MovieService>((ref) {
  return MovieService(Dio());
});

class MovieService {
  MovieService(this._dio);

  final Dio _dio;
  final apiKey = "YourAPIKey";

  Future<List<Movie>> getMovies() async {
    final response = await _dio.get(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=de&page=1');

    final results = List<Map<String, dynamic>>.from(response.data['results']);
    List<Movie> movies = results
        .map((movieData) => Movie.fromMap(movieData))
        .toList(growable: false);
    return movies;
  }
}
