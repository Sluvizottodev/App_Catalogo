import 'package:flutter/material.dart';

class NoResultsWidget extends StatelessWidget {
  final String searchQuery;

  const NoResultsWidget({Key? key, required this.searchQuery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/utils/images/search.png', width: 400, height: 400),
          const SizedBox(height: 16.0),
          const Text('Resultado não encontrado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
            'Não encontramos nenhum resultado parecido com "$searchQuery".',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
