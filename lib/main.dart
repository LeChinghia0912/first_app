import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Ứng dụng của tôi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/second': (context) =>  SecondScreen(),
      },
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// taạo bottom navigationbar
class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // Hành động của icon
          },
        ),
        title: const Center(
          child: Text('Trang chủ'),
        ),
        backgroundColor: Colors.green,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onTabTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Chuyển đến Màn hình thứ hai'),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  final List<String> nameUser = ['Nghĩa', 'Nam', 'hehe', 'hihi', 'Tuấn', 'Trà'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Màn hình thứ hai'),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: nameUser.length,
        itemBuilder: (context, index) {
          final name = nameUser[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(name),
            subtitle: Text('Thành viên thứ ${index + 1}'),
          );
        },
      ),
    );
  }
}
