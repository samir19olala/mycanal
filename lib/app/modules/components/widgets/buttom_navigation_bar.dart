import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home,color:Colors.red),
              Text("home", style: TextStyle(color: Colors.red))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height:8),
              Icon(Icons.search),
              Text("", style: TextStyle(color: Colors.red))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height:8),
              Icon(Icons.tv),
              Text("", style: TextStyle(color: Colors.red))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height:8),
              Icon(Icons.window_sharp),
              Text("", style: TextStyle(color: Colors.red))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height:8),
              Icon(Icons.more_horiz),
              Text("", style: TextStyle(color: Colors.red))
            ],
          ),
        ],
      ),
    );
  }
}
