import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: "Courier",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.grey[300],
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 48, color: Colors.black, fontWeight: FontWeight.w600),
          displayMedium: TextStyle(fontSize: 42, color: const Color.fromARGB(255, 255, 0, 0), fontWeight: FontWeight.w400),
          displaySmall: TextStyle(fontSize: 36, color: const Color.fromARGB(255, 0, 64, 255), fontWeight: FontWeight.w200),
          bodyLarge: TextStyle(fontSize: 48, color: Colors.black, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 42, color: const Color.fromARGB(255, 255, 0, 0), fontWeight: FontWeight.w400),
          bodySmall: TextStyle(fontSize: 36, color: const Color.fromARGB(255, 0, 64, 255), fontWeight: FontWeight.w200),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          textStyle: WidgetStateTextStyle.resolveWith((states) {
            return TextStyle(fontSize: 50);
          }),
          foregroundColor: WidgetStateColor.resolveWith((states) {
            return Theme.of(context).colorScheme.inversePrimary;
          }),
          backgroundColor: WidgetStateColor.resolveWith((states) {
            return Theme.of(context).colorScheme.primary;
          }),
        )),
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.blueGrey[500],
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 48, color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w600),
          displayMedium: TextStyle(fontSize: 42, color: const Color.fromARGB(255, 255, 80, 80), fontWeight: FontWeight.w400),
          displaySmall: TextStyle(fontSize: 36, color: const Color.fromARGB(255, 92, 133, 255), fontWeight: FontWeight.w200),
          bodyLarge: TextStyle(fontSize: 48, color: Colors.black, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 42, color: const Color.fromARGB(255, 255, 80, 80), fontWeight: FontWeight.w400),
          bodySmall: TextStyle(fontSize: 36, color: const Color.fromARGB(255, 92, 133, 255), fontWeight: FontWeight.w200),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          textStyle: WidgetStateTextStyle.resolveWith((states) {
            return TextStyle(fontSize: 50);
          }),
          foregroundColor: WidgetStateColor.resolveWith((states) {
            return Theme.of(context).colorScheme.inversePrimary;
          }),
          backgroundColor: WidgetStateColor.resolveWith((states) {
            return Theme.of(context).colorScheme.error;
          }),
        )),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IGME-340: Themes"),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          ElevatedButton(onPressed: (){ print("Icon"); },  
            style: ButtonStyle(
              side: WidgetStateBorderSide.resolveWith((state) {
                return BorderSide(width: 10);
              }),
              iconSize: WidgetStateProperty.resolveWith((state) { return 100; }),
              iconColor: WidgetStateProperty.resolveWith((state) { return Colors.amber; }),
            ),
            child: Icon(Icons.access_alarms_sharp)
          ),
          TextButton(onPressed: () { print("Text Button"); }, style: ButtonStyle(
              textStyle: WidgetStateTextStyle.resolveWith((states) {
                return TextStyle(fontSize: 50);
              }),
              foregroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.inversePrimary;
              }),
              backgroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.error;
              }),
            ), 
            child: Text("Text Button")
          ),
          OutlinedButton(onPressed: () { print("Outlined Button"); }, style: ButtonStyle(
              textStyle: WidgetStateTextStyle.resolveWith((states) {
                return TextStyle(fontSize: 50);
              }),
              foregroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.inversePrimary;
              }),
              backgroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.inverseSurface;
              }),
            ), 
            child: Text("Outlined Button")
          ),
          Container(
            width: 300,
            height: 200,
            color: Theme.of(context).colorScheme.primary,
            child: Text("I am Green"),
          ),
          Container(
            width: 200,
            height: 200,
            color: Theme.of(context).colorScheme.secondary,
            child: Text("I am Yellow"),
          ),
          Container(
            width: 350,
            height: 100,
            color: Theme.of(context).colorScheme.error,
            child: Text("I am Pink"),
          ),
          ElevatedButton(
            onPressed: () {
              print("Elevated Button 1");
            },
            child: const Text('Elevated Button'),
          ),
          ElevatedButton(
            onPressed: () {
              print("Elevated Button 2");
            },
            style: ButtonStyle(
              textStyle: WidgetStateTextStyle.resolveWith((states) {
                return TextStyle(fontSize: 50);
              }),
              foregroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.tertiary;
              }),
              backgroundColor: WidgetStateColor.resolveWith((states) {
                return Theme.of(context).colorScheme.onSecondary;
              }),
            ),
            child: const Text('Elevated Button 2'),
          ),
        ],
      )),
    );
  }
}
