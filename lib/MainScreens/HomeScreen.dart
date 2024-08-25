import 'package:flutter/material.dart';
import 'package:diacritic/diacritic.dart';
import '../model/Produtos.dart';
import '../utils/componentes/BarraBusca.dart';
import '../utils/componentes/SemResultado.dart';
import '../utils/componentes/VisuProdutos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredProducts = ProductData.products.where((product) {
      return removeDiacritics(product.name.toLowerCase()).contains(removeDiacritics(searchQuery.toLowerCase()));
    }).toList();

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10), // Aumente a altura para incluir o espaço
          child: Column(
            children: [
              BuscaBarra(
                isHomeScreen: true,
                onSearch: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
              SizedBox(height: 4), // Espaço abaixo da barra de busca
            ],
          ),
        ),
      ),
      body: filteredProducts.isNotEmpty
          ? ListView.separated(
        itemCount: filteredProducts.length,
        separatorBuilder: (context, index) => Container(
          height: 2.0,
          color: Colors.grey[300],
        ),
        itemBuilder: (context, index) {
          final product = filteredProducts[index];
          return ProdutoItem(product: product);
        },
      )
          : NoResultsWidget(searchQuery: searchQuery),
    );
  }
}
