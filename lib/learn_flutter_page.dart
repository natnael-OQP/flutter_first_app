import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,

        /// custom leading style
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("info");
            },
            icon: const Icon(
              Icons.info_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/profile.jpeg'),
            const SizedBox(height: 10),
            const Divider(color: Colors.black45),
            // list
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
            // list
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Elevate")),
                ),
                Expanded(
                  flex: 1,
                  child:
                      TextButton(onPressed: () {}, child: const Text("Text")),
                ),
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text("Outlined")),
                ),
              ],
            ),
            // list
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
            ),
            // list
            Switch(
                value: isChecked,
                onChanged: (bool newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            Image.network(
                'https://images6.alphacoders.com/951/thumb-1920-951579.jpg'),
          ],
        ),
      ),
    );
  }
}
