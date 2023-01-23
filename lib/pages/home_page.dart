import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Material App Bar'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(10.0),
                  ),
                  onPressed: () async {
                    // Navigator.push(context, route)
                    Navigator.pushNamed(context, '/AboutPage');
                  },
                  child: Text(
                    "GoTo About Page Android",
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade400,
                    padding: EdgeInsets.all(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                  },
                  child: Text(
                    "GoTo About Page Ios",
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    padding: EdgeInsets.all(10.0),
                  ),
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      debugPrint("geri qayidacaq sehife ola biler");
                    } else {
                      debugPrint("geri qayidacaq sehife yoxdur");
                    }
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
