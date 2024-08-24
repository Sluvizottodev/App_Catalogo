import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class CategoryScreen extends StatelessWidget {
  final List<String> categories = [
    'Anestésicos e Agulhas Gengival',
    'Biossegurança',
    'Descartáveis',
    'Dentística e Estética',
    'Ortodontia',
    'Endodontia',
    'Periféricos e Peças de Mão',
    'Moldagem',
    'Prótese',
    'Cimentos',
    'Instrumentos',
    'Cirurgia e Periodontia',
    'Radiologia'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categorias',
          style: TextStyle(fontSize: 24, color: Colors.black), // Black text color
        ),
        backgroundColor: Colors.white38, // Grey background color
      ),
      body: ListView.separated(
        itemCount: categories.length,
        separatorBuilder: (context, index) => const Divider(height: 0.1, color: Colors.grey),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              categories[index],
              style: const TextStyle(fontSize: 24, color: TColors.primaryColor), // List item color
            ),
            onTap: () {
              // Ação a ser realizada ao tocar na categoria
            },
          );
        },
      ),
    );
  }
}
