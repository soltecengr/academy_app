import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentPage = 0;
  final PageController pageController = PageController();

  List<Widget> pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    const AccountPage(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeaeaea),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
      ),
      body: PageView.builder(
        itemCount: pages.length,
        controller: pageController,
        itemBuilder: (_, index) {
          return pages[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
            );
            currentPage = index;
          });
        },
        currentIndex: currentPage,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_rounded),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Account,',
          ),
        ],
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Image.asset(
            'assets/images/user.png',
            width: 96,
            height: 96,
          ),
          const SizedBox(height: 8),
          const Text(
            'Chinnons Solomon',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Mobile Development (Flutter)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
