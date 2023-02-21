import 'package:flutter/material.dart';
import 'package:flutter_start/User.dart';

User bohdan = User("Bohdan", "Volodymyr", "Koltok", 0);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Start',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //Коли намагаюсь дістати поля оголошеної вгорі змінної bohdan як показано знизу
      //home: const MyHomePage(title: '${bohdan.name} ${bohdan.surname}\'s Application'),
      //то з'являється помилка a value of type Null cant be assigned to a parametet of type String
      home: const MyHomePage(title: 'Bohdan Koltok\'s Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      bohdan.passYear();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.center,
              ' If i deserve max points press the button 5 times \n it will bring u luck)\n'
            ),
            const Text(
              textAlign: TextAlign.center,
              'Year has passed that many times and my age is:',
            ),
            Text(
              bohdan.currentAge.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Pass Year',
        child: const Icon(Icons.add),
      ),
    );
  }
}
