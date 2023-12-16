import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  bool isBooked = false;

  void onPressed() {
    setState(() {
      isBooked = !isBooked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: isBooked ? Colors.green : Colors.blue,
        foregroundColor: Colors.white,
        child: isBooked ? const Icon(Icons.check) : const Text("Book Now!"),
      ),
    );
  }
}
