import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/helpers/porviders.dart';
import 'package:task/ui/theme/style/theme.dart';

import 'ui/screens/main_screen/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:providers,
      
      child:  MaterialApp(
        theme: getTheme(),
        home: const MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

