import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'inception-01',
        title: 'Inception',
        synopsis: 'A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.',
        ageRating: '15',
        screeningTime: 'Friday 19:30',
        ticketPrice: 8.50,
        posterImagePath: 'assets/images/inception.jpg',
      ),
      Movie(
        id: 'interstellar-02',
        title: 'Interstellar',
        synopsis: 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
        ageRating: '12A',
        screeningTime: 'Saturday 14:00',
        ticketPrice: 7.50,
        posterImagePath: 'assets/images/interstellar.jpg',
      ),
    ];
  }
}
