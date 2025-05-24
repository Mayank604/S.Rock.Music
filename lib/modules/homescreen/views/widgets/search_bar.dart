import 'package:flutter/material.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF2F2F39),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 50,
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.white),
                const SizedBox(width: 8),
                const Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Search 'Punjabi Lyrics'",
                      hintStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Mic icon tapped");
                  },
                  child: const Icon(Icons.mic, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        InkWell(
          onTap: () {
            print("Profile icon tapped");
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person_2_outlined, color: Colors.black),
          ),
        ),
      ],
    );
  }
}