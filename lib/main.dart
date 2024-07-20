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
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Chuyển đến Màn hình thứ hai'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình thứ hai'),
      ),
      body: const Center(
        child: Text('Đây là màn hình thứ hai'),
      ),
    );
  }
}
