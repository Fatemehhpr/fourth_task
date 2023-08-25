import 'package:flutter/material.dart';
import 'package:fourth_task/providers/controllerProvider.dart';
import 'package:fourth_task/screens/loginScreen.dart';
import 'package:fourth_task/screens/refreshScreen.dart';
import 'package:fourth_task/screens/sendCodeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => controllerProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffc0d6e4),
            foregroundColor: Color(0xff002955),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff37475f)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => sendCodeScreen(),
        '/login': (context) => loginScreen(),
        '/refresh': (context) => refreshScreen(),
      },
    );
  }
}




