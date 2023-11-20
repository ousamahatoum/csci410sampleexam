import 'package:flutter/material.dart';
import 'list_cars.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'sample midterm',
      debugShowCheckedModeBanner: false,
      home: ListCars(),
    );
  }
}
