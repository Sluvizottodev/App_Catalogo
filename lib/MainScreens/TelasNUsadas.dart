//TELAS NÃO USADAS
import 'package:flutter/material.dart';

import '../utils/componentes/InfAppBar.dart';

class AnunciarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anunciar'),
      ),
      body: Center(
        child: Text('Anunciar Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class FavoritosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Center(
        child: Text('Favoritos Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class ContaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conta'),
      ),
      body: Center(
        child: Text('Conta Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}