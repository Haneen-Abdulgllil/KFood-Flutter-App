import 'package:flutter/material.dart';

class WidgetBodyFavorite extends StatelessWidget {
  const WidgetBodyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        // final item = favoriteItems[index];
        return ListTile(
          title: const Text('favorite'),
          leading: const Icon(Icons.favorite),
          iconColor: Colors.green,
          onTap: () {
            // Handle item tapped
          },
        );
      },
    );
  }
}