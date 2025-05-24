import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeDemoBanner extends StatelessWidget {
  const FreeDemoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA90149), Color(0xFF550120)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  "Claim your",
                  style: GoogleFonts.syne(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Free Demo",
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  "for custom Music Production",
                  style: GoogleFonts.syne(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text("Book Now", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: -30,
            child: Image.asset('assets/vectorImage/disc.png', width: 135, height: 135),
          ),
          Positioned(
            bottom: 10,
            right: -40,
            child: Image.asset('assets/vectorImage/piano.png', width: 135, height: 135),
          ),
        ],
      ),
    );
  }
}