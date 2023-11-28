import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                'assets/images/user.png',
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Obinna Vincent'),
                Text(
                  'Last Seen: 1 hour ago',
                  style: TextStyle(fontSize: 12, color: Colors.white60),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            height: 50,
            color: Colors.red,
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 30,
              height: 60,
              color: Colors.blue,
            ),
            // const Expanded(
            //   child: TextField(
            //     decoration: InputDecoration(
            //       fillColor: Colors.white,
            //       hintText: 'Type message here',
            //     ),
            //   ),
            // ),
            // IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
          ],
        ),
      ),
    );
  }
}
