// This line brings in Flutter's ready-made building blocks (buttons, text, colors, etc.)
import 'package:flutter/material.dart';

// The app starts running here
void main() {
  runApp(const MyApp());
}

// MyApp sets up the overall look of the app (colors, theme)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the small "DEBUG" label
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal), // Step 1: teal color
        useMaterial3: true,
      ),
      home: const CounterPage(), // the screen we show
    );
  }
}

// CounterPage is the screen with the counter.
// It is "Stateful" because the number changes when you press a button.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // The number shown on screen. It starts at 0.
  int _counter = 0;

  // Runs when the + button is pressed
  void _incrementCounter() {
    setState(() {
      _counter++; // add 1
    });
  }

  // Runs when the - button is pressed (Step 3)
  void _decrementCounter() {
    setState(() {
      _counter--; // subtract 1
    });
  }

  // This builds what you see on the screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter'), // Step 1: new title
      ),
      body: Center(
        child: Column( // Step 2: stacks things from top to bottom
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You pushed:'),

            // Step 4: big, bold number
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30), // empty space between number and buttons

            // The buttons sit side by side inside a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20), // space between the two buttons
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}s