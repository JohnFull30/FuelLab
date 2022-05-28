import 'package:flutter/material.dart';
import 'driver.dart';
import 'driver_card.dart';

void main() => runApp(const MaterialApp(
  home: DriverList(),
));

class DriverList extends StatefulWidget {
  const DriverList({Key? key}) : super(key: key);

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {

  List<Driver> drivers = [
    Driver(driver: 'Andy Warren', model: 'Caprice' ),
    Driver(driver: 'Doug Duell', model: 'Fury Wagon' ),
    Driver(driver: 'David Hearn', model: 'Camaro' )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Drivers'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: drivers.map((driver) => DriverCard(driver: driver)).toList(),
      )
    );
  }
}


