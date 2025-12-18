import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart'; 
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/setup_screen.dart';
import 'screens/next_setup_screen.dart'; 
import 'screens/home_screen/home_screen.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('ko_KR', null);

  runApp(const BiteWiseApp());
}

class BiteWiseApp extends StatelessWidget {
  const BiteWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiteWise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/setup': (context) => const SetupScreen(),
        '/nextSetup': (context) => const NextSetupScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}