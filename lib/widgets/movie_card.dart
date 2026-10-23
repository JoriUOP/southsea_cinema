import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/constants.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(movie.posterImagePath),
          Text(movie.title),
          Text(movie.ageRating),
          Text(movie.screeningTime),
          Text(movie.synopsis),
          Text(movie.ticketPrice.toString()),
          ElevatedButton(
            onPressed: () {
              print('Booking button pressed for: ' + movie.title);
            },
            child: const Text('Book Tickets'),
          ),
        ],
      ),
    );
  }
}
