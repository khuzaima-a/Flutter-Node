import 'package:flutter/material.dart';
import "package:client/screens/rides_screen.dart";

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RidesScreen(),
        ),
      ),
    ),
  );
}
