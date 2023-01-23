import 'dart:math';

import 'package:f_six/pages/contact_page.dart';
import 'package:f_six/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _number = Random().nextInt(50);
        Navigator.pop(context, _number);
        debugPrint("Pop Scope deyer: $_number");
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Page"),
          centerTitle: true,
          backgroundColor: Colors.red,
          automaticallyImplyLeading: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("About Page"),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      _number = Random().nextInt(50);
                      debugPrint("geden deyer: $_number");
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ContactPage()));
                    },
                    child: Text("Back home"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
