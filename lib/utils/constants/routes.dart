import 'package:flutter/material.dart';

import '../../MainScreens/CategoriaScreen.dart';
import '../../MainScreens/HomeScreen.dart';


class PageRoutes {
  // Define todas as rotas do aplicativo como constantes
  static const String onboarding = '/';
  static const String home = '/home';
  static const String catalogo = '/catalogo';


  // Método para gerar a rota baseada no nome
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case catalogo:
        return MaterialPageRoute(builder: (_) => CategoryScreen());
      default:
      // Não faz nada se a rota não for encontrada
        return MaterialPageRoute(builder: (_) => Container()); // Retornando um Container vazio
    }
  }
}
