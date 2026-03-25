import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FDF1),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Creator 2026 🛠️'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Вітання з оновленого додатка!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4CAF50),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Поточне значення лічильника:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              '$_counter',
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Відняти',
                  backgroundColor: const Color(0xFF1E88E5),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child:
                      const Icon(Icons.remove, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Додати',
                  backgroundColor: const Color(0xFF2E7D32),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 28),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 170,
              height: 45,
              child: FloatingActionButton.extended(
                onPressed: _resetCounter,
                tooltip: 'Скинути',
                backgroundColor: const Color(0xFFD32F2F),
                icon: const Icon(Icons.refresh, color: Colors.white, size: 18),
                label: const Text(
                  'Скинути',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
