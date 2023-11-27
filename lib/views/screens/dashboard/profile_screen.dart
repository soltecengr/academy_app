import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

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
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber,
    ),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeaeaea),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Soltec User \nDrawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  )),
            ),
            ListTile(
              onTap: () {
                showToast('Home nav tapped');
              },
              leading: const Icon(Icons.home),
              title: const Text('User Home'),
              subtitle: const Text('Current login in user'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () {
                showToast('Available course nav tapped');
              },
              leading: const Icon(Icons.view_list_outlined),
              title: const Text('Available Courses'),
              subtitle: const Text('View all course we offer'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              iconColor: Colors.blue,
            ),
          ],
        ),
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentPage = index;
            pageController.animateToPage(
              currentPage,
              duration: const Duration(milliseconds: 400),
              curve: Curves.linear,
            );
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
    return const SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 32),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              'assets/images/user.png',
            ),
          ),
          SizedBox(height: 8),
          Text(
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
