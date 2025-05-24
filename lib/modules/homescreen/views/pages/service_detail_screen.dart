import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatelessWidget {

  final String title;
  final String subtitle;
  final String imagePath;

  const ServiceDetailScreen({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF18171C),
      appBar: AppBar(
        backgroundColor: Color(0xFFA90149),
        title: Text('Service Details',
          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          'Card tapped: $title',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}