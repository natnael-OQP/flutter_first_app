import 'package:flutter/material.dart';

int item = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item,
      itemBuilder: (BuildContext context, int index) {
        return  ListTile(
          title: Text('item $index'),
          leading: const Icon(Icons.check_circle_outlined),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: (){
            debugPrint("$index");
          },
        );
      },
    );
  }
}
