import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();

}

class _BottomNavigationState extends State<BottomNavigation> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (int index) {
          setState(() {
            
          }
          );
        },

        indicatorColor: Colors.blue[800],
        

        destinations: const <Widget> [],

      ),

    );

  }
}