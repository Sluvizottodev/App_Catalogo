import 'package:flutter/material.dart';

class NoResultsWidget extends StatelessWidget {
  final String searchQuery;

  const NoResultsWidget({Key? key, required this.searchQuery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obter a largura da tela
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/utils/images/search.png',
            width: screenWidth * 0.5, // Ajuste a largura da imagem para 50% da largura da tela
            height: screenWidth * 0.5, // Ajuste a altura da imagem para 50% da largura da tela
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Resultado não encontrado',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adicionar padding horizontal
            child: Text(
              'Não encontramos nenhum resultado parecido com "$searchQuery".',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16), // Tamanho de fonte ajustado
            ),
          ),
        ],
      ),
    );
  }
}
