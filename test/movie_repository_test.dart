
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository', () {
    test('returns the mock movies', () {
      final repository = MovieRepository();
      final movies = repository.getMovies();

      expect(movies.length, 2);
      expect(movies[0].id, 'inception-01');
      expect(movies[0].title, 'Inception');
      expect(movies[1].id, 'interstellar-02');
      expect(movies[1].title, 'Interstellar');
    });

    test('finds a movie with an existing ID', () {
      final repository = MovieRepository();

      final movie = repository.getMovieById('inception-01');

      expect(movie, isNotNull);
      expect(movie!.title, 'Inception');
    });

    test('returns null for a missing ID', () {
      final repository = MovieRepository();

      final movie = repository.getMovieById('non-existent-id');

      expect(movie, isNull);
    });
  });
}
