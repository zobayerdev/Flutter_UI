import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.spaceGrotesk(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.red[600],
        foregroundColor: Colors.white,
        bottomOpacity: 10,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 30,
              color: Colors.red[600],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.red[600],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              iconSize: 30,
              color: Colors.red[600],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              iconSize: 30,
              color: Colors.red[600],
            ),
          ],
        ),
        color: Colors.white,
        elevation: 10,
        surfaceTintColor: Colors.red[600],
      ),
    );
  }
}
