import 'package:flutter/material.dart';
import 'dart:ui';

class SetState extends StatefulWidget {
  const SetState({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SetStateState createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: const Text(
          '🌸 Cute Counter App 🌸',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Track Your Count:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.pink[700],
                fontFamily: 'Lobster',
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.pink[900],
                fontFamily: 'DancingScript',
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    '➕ Add',
                    style: TextStyle(fontSize: 18, fontFamily: 'Lobster'),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    '➖ Subtract',
                    style: TextStyle(fontSize: 18, fontFamily: 'Lobster'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
