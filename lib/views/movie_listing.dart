import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Inception',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: cinemaFontWhite),
            ),
            const Text(
              'Runtime: 148 mins | Rating: 15',
              style: TextStyle(fontSize: 14, color: cinemaFontMuted),
            ),
            const SizedBox(height: 10),
            const Text(
              'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
              style: TextStyle(fontSize: 16, color: cinemaFontWhite),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Add to order button pressed');
              },
              child: const Text('Add to order'),
            ),
          ],
        ),
      ),
    );
  }
}
