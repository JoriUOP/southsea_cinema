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
        child: Column(
          children: [
            Text('Interstellar'),
            Text('Runtime: 169 mins | Rating: 12A'),
            Text('A team of explorers travel through a wormhole in space in an attempt to ensure humanity survival.'),
            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              onSelected: (int? value) {
                if (value != null) {
                  setState(() {
                    _ticketQuantity = value;
                    print('Tickets selected: $_ticketQuantity');
                  });
                }
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
            ),
            Text('Tickets selected: $_ticketQuantity'),
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

