import 'package:flutter/material.dart';
import 'package:gerai_biru_merah/screens/coffeeentry_form.dart';

import 'package:gerai_biru_merah/widgets/left_drawer.dart';
import 'package:gerai_biru_merah/widgets/coffee_card.dart';



class MyHomePage extends StatelessWidget {
  final String npm = '2306275216'; // NPM
  final String name = 'Syahirah Putri Aisyah'; // Nama
  final String className = 'PBP C'; // Kelas
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Produk Kopi", Icons.list, const Color.fromARGB(255, 255, 221, 141)),
    ItemHomepage("Tambah Kopi", Icons.add, const Color.fromARGB(255, 251, 207, 105)),
    ItemHomepage("Keluar", Icons.logout, const Color.fromARGB(255, 247, 198, 84)),
  ];

  MyHomePage({super.key}); // Removed 'const' keyword from here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gerai Biru Merah',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        // Change the drawer icon color to white
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // Add the LeftDrawer widget as the drawer property
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Gerai Biru Merah Coffee Tracker',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}