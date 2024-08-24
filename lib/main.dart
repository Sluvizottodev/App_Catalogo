import 'package:corelab_dentist/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:corelab_dentist/utils/componentes/InfAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dentist App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColors.primaryColor, // Usando a cor primária
          primary: TColors.primaryColor,
          secondary: TColors.neutralColor,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: TColors.backgroundLight, // Cor de fundo do scaffold
        appBarTheme: AppBarTheme(
          backgroundColor: TColors.primaryColor, // Cor do AppBar
          titleTextStyle: TextStyle(color: TColors.textWhite , fontSize: 24), // Cor do texto do AppBar
        ),
      ),
      home: InfAppBar(), // Use InfAppBar como home
    );
  }
}