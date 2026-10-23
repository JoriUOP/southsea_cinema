import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String _bookingMessage = '';

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
            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              label: const Text('Select Tickets', style: TextStyle(color: cinemaFontWhite)),
              textStyle: const TextStyle(color: cinemaFontWhite),
              onSelected: (int? value) {
                if (value != null) {
                  setState(() {
                    _ticketQuantity = value;
                    print('Tickets selected: $_ticketQuantity');
                  });
                }
              },
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Tickets selected: $_ticketQuantity',
              style: const TextStyle(color: cinemaFontWhite),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _bookingMessage = 'Added $_ticketQuantity tickets to the order';
                  print(_bookingMessage);
                });
              },
              child: const Text('Add to order'),
            ),
            const SizedBox(height: 15),
            if (_bookingMessage.isNotEmpty)
              Text(
                _bookingMessage,
                style: const TextStyle(color: cinemaBrand, fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
