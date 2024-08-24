import 'package:flutter/material.dart';
import '../../MainScreens/HomeScreen.dart';
import '../../MainScreens/CategoriaScreen.dart';
import '../../MainScreens/TelasNUsadas.dart'; // Adicione as outras telas aqui

class InfAppBar extends StatefulWidget {
  @override
  _InfAppBarState createState() => _InfAppBarState();
}

class _InfAppBarState extends State<InfAppBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    AnunciarScreen(),
    FavoritosScreen(),
    ContaScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), // Ícone home outlined
            label: 'Home',
            activeIcon: Icon(Icons.home_filled), // Ícone home preenchido
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined), // Ícone de Grid View
            label: 'Categoria',
            activeIcon: Icon(Icons.grid_view_sharp), // Ícone de Grid View ativo
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Anunciar',
            activeIcon: Icon(Icons.add_box),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favoritos',
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined), // Ícone de Conta atualizado
            label: 'Conta',
            activeIcon: Icon(Icons.person), // Ícone de Conta ativo
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
