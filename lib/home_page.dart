import 'package:flutter/material.dart';
import 'package:login_with_share_perf/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> logOut() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('isLogin', false);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'HomePage',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Welcome to homePage',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Log Out')),
        ],
      ),
    );
  }
}
