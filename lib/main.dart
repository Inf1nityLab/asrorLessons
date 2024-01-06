import 'package:asror_lesson/presentation/views/sign_in.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInView()
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
  // Функция или метод
  // * - умножения
  // / - деления
  int number = 0;
  // Тот тип данных которые мы сами дали
  void increment(int sifra) {
    setState(() {
      if (number == 100){
        print('Hello');
      } else if (number != 10){
        print('Hi');
      } else if(number < 10){
        print('Good buy');
      } else{
        print('Hello good');
      }
    });
  }

  void increment10() {
    setState(() {
      number += 10;
    });
  }

  void increment100() {
    setState(() {
      number += 100;
    });
  }
  void increment1000() {
    setState(() {
      number += 1000;
    });
  }

  void decrement() {
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$number',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text('$name'),
              Text('$age'),
              Text('$weight'),
              Text('$maritialStatus'),
              Text('$name'),
              Row(
                children: [
                  button('+1'),
                  button('+10'),
                  button('+100'),
                  button('+1000'),
                ],
              ),
              container(100, 100, Colors.black, 'Hello'),
              container(90, 50, Colors.red, 'Hi'),
              container(100, 150, Colors.green,'Welcome'),
              container(170, 170, Colors.yellow, 'Good'),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                increment(1);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                decrement();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.remove),
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget button(String name){
    return ElevatedButton(onPressed: (){increment(100);}, child:  Text('$name'));
  }

  Widget container(double height, double width, Color abc, String text, ){
    return Container(
      height: height,
      width: width,
      color: abc,
      child: Center(
        child: Text('$text'),
      ),
    );
  }
}
