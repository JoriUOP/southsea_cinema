
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie', () {
    test('sets the movie properties correctly', () {
      const movie = Movie(
        id: '1',
        title: 'Inception',
        synopsis: 'A thief enters dreams.',
        ageRating: '12A',
        screeningTime: '14:30',
        ticketPrice: 8.0,
        posterImagePath: 'assets/images/inception.jpg',
      );

      expect(movie.id, '1');
      expect(movie.title, 'Inception');
      expect(movie.synopsis, 'A thief enters dreams.');
      expect(movie.ageRating, '12A');
      expect(movie.screeningTime, '14:30');
      expect(movie.ticketPrice, 8.0);
      expect(movie.posterImagePath, 'assets/images/inception.jpg');
    });

    test('formats a whole-pound price', () {
      const movie = Movie(
        id: '1',
        title: 'Inception',
        synopsis: 'A thief enters dreams.',
        ageRating: '12A',
        screeningTime: '14:30',
        ticketPrice: 8.0,
        posterImagePath: 'assets/images/inception.jpg',
      );

      expect(movie.formattedPrice, '£8.00');
    });

    test('formats a price with pence', () {
      const movie = Movie(
        id: '2',
        title: 'Interstellar',
        synopsis: 'Explorers travel through space.',
        ageRating: '12A',
        screeningTime: '18:00',
        ticketPrice: 8.50,
        posterImagePath: 'assets/images/interstellar.jpg',
      );

      expect(movie.formattedPrice, '£8.50');
    });
  });
}
