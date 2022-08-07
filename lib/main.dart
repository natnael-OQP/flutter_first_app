import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
      title: "home",
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          debugPrint("take nathan")
        },
        backgroundColor: Colors.blue[500],
        child: const Icon(Icons.add_a_photo_outlined),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
      onDestinationSelected: (i){
        setState(() {
          currentPage=i;
        });
      },
      selectedIndex: currentPage,
      ),
    );
  }
}
