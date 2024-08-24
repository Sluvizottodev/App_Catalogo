import 'package:flutter/material.dart';
import '../constants/colors.dart';

class BuscaBarra extends StatelessWidget {
  final ValueChanged<String> onSearchChanged;

  const BuscaBarra({required this.onSearchChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onChanged: onSearchChanged,
            decoration: InputDecoration(
              hintText: 'Buscar',
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.5), // Cor preta com opacidade
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: const Icon(Icons.search, color: TColors.primaryColor),
            ),
          ),
        ),
        Container(
          height: 5,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
