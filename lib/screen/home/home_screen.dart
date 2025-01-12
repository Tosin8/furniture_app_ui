import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:svg_flutter/svg.dart';

import '../splash/splash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Madera',
            style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontFamily: 'Great Vibes'),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/bell.svg')),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                // navigate directly to onboard page.
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);

                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SplashScreen()));
              },
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(items: items),
        body: Column(
          children: [
            const Text(
              'Find modern \n furniture for you.',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: ' Make your search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Material(
              elevation: 15,
              child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          spreadRadius: 2.0,
                        )
                      ]),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('COLLECTION'),
                          SizedBox(height: 5),
                          Text(
                            'New',
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                          Text('Arrivals'),
                        ],
                      ),
                      Expanded(
                          child: Image.asset('assets/products/table/1.jpg')),
                    ],
                  )),
            ),
          ],
        ));
  }
}
