import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            child: const Text('Show About Dialog'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                        applicationIcon: FlutterLogo(),
                        applicationLegalese: 'Legalese',
                        applicationName: 'Flutter Application',
                        applicationVersion: 'version 1.0.0',
                        children: [
                          Text('This is a text created by Flutter Mapp')
                        ],
                      ));
            }));
  }
}
