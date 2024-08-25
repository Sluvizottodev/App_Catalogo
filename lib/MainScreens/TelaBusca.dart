import 'package:flutter/material.dart';
import '../utils/componentes/SemResultado.dart';
import '../utils/constants/colors.dart';
import '../model/Produtos.dart';
import 'package:diacritic/diacritic.dart';
import '../utils/componentes/BarraBusca.dart';
import '../utils/componentes/VisuProdutos.dart';

class TelaBusca extends StatefulWidget {
  @override
  _TelaBuscaState createState() => _TelaBuscaState();
}

class _TelaBuscaState extends State<TelaBusca> {
  String searchQuery = '';
  List<String> categories = [
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
    final filteredProducts = ProductData.products.where((product) {
      final query = removeDiacritics(searchQuery.toLowerCase());
      return removeDiacritics(product.name.toLowerCase()).contains(query) ||
          product.price.toString().contains(query) ||
          categories.any((category) => removeDiacritics(category.toLowerCase()).contains(query));
    }).toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Altura reduzida do AppBar
        child: AppBar(
          backgroundColor: TColors.primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: TColors.textWhite),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: BuscaBarra(
                      isHomeScreen: false,
                      onSearch: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implementar ação do filtro aqui
                    },
                    child: Text('Filtro',
                        style: TextStyle(color: TColors.textWhite , fontSize: 16)),
                  ),
                ],
              ),
              SizedBox(height: 4.0), // Espaço abaixo da barra de busca
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            if (searchQuery.isNotEmpty)
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1), // Fundo cinza com opacidade
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  '${filteredProducts.length} itens encontrados',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: TColors.textPrimary,
                  ),
                ),
              ),
            SizedBox(height: 8.0), // Espaço entre o texto e a lista

            Expanded(
              child: searchQuery.isEmpty
                  ? ListView.separated(
                itemCount: categories.length,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey[300]),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return ListTile(
                    leading: Icon(Icons.history, color: Colors.grey[700]),
                    title: Opacity(
                      opacity: 0.7,
                      child: Text(
                        category,
                        style: TextStyle(
                            fontSize: 16, color: TColors.textPrimary),
                      ),
                    ),
                    onTap: () {
                      // Implementar ação ao selecionar a categoria
                    },
                  );
                },
              )
                  : filteredProducts.isNotEmpty
                  ? ListView.separated(
                itemCount: filteredProducts.length,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey[300]),
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return ProdutoItem(product: product);
                },
              )
                  : NoResultsWidget(searchQuery: searchQuery),
            ),
          ],
        ),
      ),
    );
  }
}