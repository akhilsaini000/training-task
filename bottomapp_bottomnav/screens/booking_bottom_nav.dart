import 'package:bottomnav_bookings/screens/cab_widget.dart';
import 'package:bottomnav_bookings/screens/flight_widget.dart';
import 'package:bottomnav_bookings/screens/hotel_widget.dart';
import 'package:flutter/material.dart';

class BookingsBottomNavApp extends StatefulWidget {
  const BookingsBottomNavApp({Key? key}) : super(key: key);

  @override
  State<BookingsBottomNavApp> createState() => _BookingsBottomNavAppState();
}

class _BookingsBottomNavAppState extends State<BookingsBottomNavApp> {
  static int _currentIndex = 0;
  final tab_widgets = [
    const HotelWidget(),
    const FlightWidget(),
    const CabWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: tab_widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 24,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotels'),
            BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Flights'),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car), label: 'Cabs'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
