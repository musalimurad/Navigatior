import 'package:f_six/pages/about_page.dart';
import 'package:f_six/pages/contact_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/AboutPage': (context) => AboutPage(),
        'ContactPage': (context) => ContactPage()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("Error"),
              centerTitle: true,
            ),
            body: Center(
              child: Text("404 Sehife tapilmadi"),
            ),
          ),
        );
      },
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/AboutPage');
                  },
                  child: Text("click"))
            ],
          ),
        ),
      ),
    );
  }
}
