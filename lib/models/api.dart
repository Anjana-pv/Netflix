import 'dart:convert';
import 'package:newtwo/models/contence.dart';
import 'package:newtwo/models/movies.dart';
import 'package:newtwo/models/search.dart';
import 'package:newtwo/models/tv_series.dart';
import 'package:http/http.dart'as http; 


class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=${Constant.apikey}';
 static const popularUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=${Constant.apikey}';
  static const topRatedUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.apikey}';
  static const nowPlayingUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=${Constant.apikey}';
  static const upComingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.apikey}';
  static const topRatedTvSeriesUrl =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=${Constant.apikey}';
  static const popularTvSeriesUrl =
      'https://api.themoviedb.org/3/tv/popular?api_key=${Constant.apikey}';
     
  Future<List<Movie>> getTrending() async {
    final response = await http.get(Uri.parse(_trendingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      print(decodedData);
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
   Future<List<Movie>> getpopularMovies() async { 
    final response = await http.get(Uri.parse(popularUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something Happend');
    }
  }

  Future<List<Movie>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(upComingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something Happend');
    }
  }

  Future<List<Movie>> getnowPlayingMovies() async {
    final response = await http.get(Uri.parse(nowPlayingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something Happend');
    }
  }

  Future<List<TvSeries>> getTopRatedSeries() async {
    final response = await http.get(Uri.parse(topRatedTvSeriesUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((tv) => TvSeries.fromJson(tv)).toList();
    } else {
      throw Exception('Something Happend');
    }
  }

  Future<List<TvSeries>> getpopularSeries() async {
    final response = await http.get(Uri.parse(popularTvSeriesUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((tv) => TvSeries.fromJson(tv)).toList();
    } else {
      throw Exception('Something Happend');
    }
  }

  

Future<List<SearchMovie>> search(value) async { 
  final searchsUrl = 'https://api.themoviedb.org/3/search/movie?query=$value&include_adult=false&language=en-US&page=1&api_key=${Constant.apikey}';

  final response = await http.get(Uri.parse(searchsUrl));
  if (response.statusCode == 200) {
    final decodedData = json.decode(response.body)['results'] as List;
    return decodedData
        .map((movie) => SearchMovie.fromJson(movie)) 
       
        .where((movie) => movie.posterPath.isNotEmpty)
        .toList();
  } else {
    throw Exception('Something Happened');
  }
}

}
