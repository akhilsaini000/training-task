import 'package:bottomnav_bookings/screens/cab_widget.dart';
import 'package:bottomnav_bookings/screens/flight_widget.dart';
import 'package:bottomnav_bookings/screens/hotel_widget.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class FancyBottomNavApp extends StatefulWidget {
  const FancyBottomNavApp({Key? key}) : super(key: key);

  @override
  State<FancyBottomNavApp> createState() => _FancyBottomNavAppState();
}

class _FancyBottomNavAppState extends State<FancyBottomNavApp> {
  //static int _currentIndex = 0;
  final tabwidgets = [
    const HotelWidget(),
    const FlightWidget(),
    const CabWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Bookings App'),
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.hotel, title: 'Hotels'),
          TabItem(icon: Icons.flight, title: 'Flights'),
          TabItem(icon: Icons.directions_car, title: 'Cabs'),
        ],
        initialActiveIndex: 1, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
