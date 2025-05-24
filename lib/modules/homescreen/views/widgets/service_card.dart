import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/service_detail_screen.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final String imagePath;

  const ServiceCard({
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.imagePath,
    super.key,
  });



@override
Widget build(BuildContext context) {
  return InkWell(
    onTap: () {
      // Add your navigation or action here
      print('Card tapped: $title');
      // Example navigation:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ServiceDetailScreen(
            title: title,
            subtitle: subtitle,
            imagePath: imagePath,
          ),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.transparent.withOpacity(0.6),
            BlendMode.darken, // Darkens the image for better text visibility
          ),
        ),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.transparent,
        child: ListTile(
           leading: SvgPicture.asset(
          iconPath,
          width: 47,
          height: 47,
          
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        trailing: SvgPicture.asset(
          "assets/icons/serviceCardIcon/forward.svg",
          width: 20,
          height: 20,
          
        ),
        ),
      ),
    ),
  );
}
}