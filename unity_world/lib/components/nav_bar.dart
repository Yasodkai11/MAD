import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();

}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          }
          );
        },

        indicatorColor: Colors.blue[800],
        selectedIndex: currentPageIndex,

        destinations: const <Widget> [

          NavigationDestination(

            icon: Icon(Icons.people_alt_outlined), 
            label: 'Club'
          ),

          NavigationDestination(
            
            icon: Icon(Icons.domain_verification_outlined), 
            label: 'Schedule',
          ),

          NavigationDestination(
            
            icon: Icon(Icons.home_outlined),
            label:'Home',
          ),

          NavigationDestination(
            
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Reservation',
          ),

          NavigationDestination(
            
            icon: Icon(Icons.feedback_outlined),
            label: 'Request',
          ),

        ],

      ),

      

    );

  }
}