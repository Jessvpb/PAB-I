import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/screens/main_screen.dart';

import 'models/candi.dart';
import 'screens/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      onGenerateRoute: (settings){
        if (settings.name == '/detail'){
          final varCandi = settings.arguments as Candi;
          return MaterialPageRoute(
            builder: (context) => DetailScreen(varCandi: varCandi)
          );
        };
        return null;
      }
    );
  }
}
