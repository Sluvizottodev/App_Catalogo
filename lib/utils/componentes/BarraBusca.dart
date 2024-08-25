import 'package:flutter/material.dart';
import '../../MainScreens/TelaBusca.dart';
import '../constants/colors.dart';

class BuscaBarra extends StatelessWidget {
  final ValueChanged<String>? onSearch;
  final bool isHomeScreen;

  BuscaBarra({this.onSearch, required this.isHomeScreen});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: searchController,
        readOnly: isHomeScreen,
        onTap: isHomeScreen
            ? () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TelaBusca(),
            ),
          );
        }
            : null,
        decoration: InputDecoration(
          hintText: 'Buscar',
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: IconButton(
            icon: const Icon(Icons.search, color: TColors.primaryColor),
            onPressed: () {
              if (isHomeScreen) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TelaBusca(),
                  ),
                );
              } else if (searchController.text.isNotEmpty && onSearch != null) {
                onSearch!(searchController.text);
              }
            },
          ),
        ),
      ),
    );
  }
}
