import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Learn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          )
          // titleTextStyle: FontWeight.w200,
          ),
      body: Column(
        children: [
          Image.asset('images/profile.jpeg'),
          const SizedBox(height: 10),
          const Divider(color: Colors.black45),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black12,
            width: double.infinity,
            child: const Center(
              child: Text(
                "stay focus",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Elevate")),
              ),
              Expanded(
                flex: 1,
                child: TextButton(onPressed: () {}, child: const Text("Text")),
              ),
              Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text("outlined")),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              debugPrint("gestureDetector");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.headphones,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}