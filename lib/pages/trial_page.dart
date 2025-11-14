import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class TrialPage extends StatefulWidget {
  const TrialPage({super.key});

  @override
  State<TrialPage> createState() => _TrialPageState();
}

class _TrialPageState extends State<TrialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Manga Reader",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.settings, size: 22),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFF4A2E2A),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.white70),
                  hintText: "Search manga",
                  hintStyle: TextStyle(color: Colors.white60),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Popular Manga",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  mangaCard(
                    image: "assets/images/solo_leveling.jpeg",
                    title: "Solo Leveling",
                    genre: "Action, Fantasy",
                  ),
                  mangaCard(
                    image: "assets/images/black_clover.jpeg",
                    title: "Black Clover",
                    genre: "Action, Drama",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "New Releases",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            newReleaseItem(
              genre: "Action",
              title: "Solo Leveling",
              rating: 4.8,
              chapters: 20,
              img: "assets/images/solo_leveling.jpeg",
            ),
            newReleaseItem(
              genre: "Action",
              title: "My Hero Academia",
              rating: 4.6,
              chapters: 15,
              img: "assets/images/mha.jpeg",
            ),
            newReleaseItem(
              genre: "Mystery",
              title: "Classroom Of The Elites",
              rating: 4.7,
              chapters: 18,
              img: "assets/images/classroom_of_the_elites.jpeg",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
  Widget mangaCard({
    required String image,
    required String title,
    required String genre,
  }) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF3A2521),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
            child: Image.network(
              image,
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget newReleaseItem({
    required String genre,
    required String title,
    required double rating,
    required int chapters,
    required String img,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(img, height: 60, width: 60, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                genre,
                style: const TextStyle(color: Colors.white60, fontSize: 12),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$rating • $chapters chapters",
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
