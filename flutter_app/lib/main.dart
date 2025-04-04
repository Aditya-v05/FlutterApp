import 'package:flutter/material.dart';
import 'package:flutter_app/workerhomepage.dart';
import 'userhomepage.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          brightness: Brightness.light,
        ),
      ),
      // Set the login screen as the starting page
      initialRoute: '/work',

      // Define all named routes
      routes: {
        '/login': (context) => const Log(),                 // Login screen
        '/home': (context) => const UserHomePage(),   // Workers list
        '/work': (context) => const WorkerHomePage()
      },
    );
  }
}