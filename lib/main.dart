import 'package:bubble_slider/bubble_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bubble Slider Example"),
      ),
      body: Center(
        child: BubbleSlider(
          bubbleSize: BubbleSize.veryLarge,
          bubblesSpeed: BubbleSpeed.medium,
          thumbRadiusSpeed: ThumbRadiusSpeed.veryFast,
          onChangeEnd: (s) {
            print("Value changes : " + s.toString());
          },
          onChanged: (s) {
            print("Value changing : " + s.toString());
          },
          value: 50,
          isBubbleVisible: true,
          color: Colors.green,
        ),
      ),
    );
  }
}
