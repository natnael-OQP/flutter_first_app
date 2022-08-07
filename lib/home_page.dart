import 'package:flutter/material.dart';

import 'package:first_app/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        /// redirect to learn_flutter_page 
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
          return const LearnFlutterPage();
        }));
      }, 
        child: const Text("Papa Flutter"),
      ),
    );
  }
}