import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Text("Contact Page"),
        ),
      ),
    );
  }
}