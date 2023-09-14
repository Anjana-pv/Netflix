class Movie{
  String title;
  String backDropPath;
  String originalTitle;
  String posterPath;
  String releaseDate;


Movie({
required this.title,
required this.backDropPath,
required this.originalTitle,
required this.posterPath,
required this.releaseDate,


});
factory Movie.fromJson(Map<String ,dynamic>json)
{
  return Movie
  (title: json["title"],
   backDropPath: json['backdrop_path'] ,
    originalTitle: json['original_title'],
     posterPath: json ['poster_path'],
      releaseDate: json['release_date'],

  );
}

}