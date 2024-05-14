import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          onPressed: _decrementCounter,
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.purple[100],
        title: const Text(
          'Flutter Playground',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(children: [
                const Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontFamily: 'sans-serif',
                  ),
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontFamily: 'sans-serif',
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ), // Espaçamento vertical em torno dos botões
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ), // Espaçamento horizontal em torno dos botões
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: _resetCounter,
                      icon: const Icon(Icons.refresh),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.purple[100]!,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: _decrementCounter,
                          icon: const Icon(Icons.remove),
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.purple[100]!,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: _incrementCounter,
                          icon: const Icon(Icons.add),
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.purple[100]!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.purple[100],
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple[50],
    );
  }
}
