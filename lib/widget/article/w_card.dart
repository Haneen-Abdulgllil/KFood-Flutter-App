import 'package:app/model/article/m_article_app.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  // final String title;
  // final String description;
  // final String imagePath;
   const CustomCard({super.key, required this.data});
  final ModelArticleApp data;

  // CustomCard({required ModelArticleApp data});

  @override
  Widget build(BuildContext context){
    
    return Container(
      width: 250.0,
      height: 340.0,
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.green, // Set the desired border color
          width: 2.0, // Set the desired border width
        ),
      ),
      child: Column(
        children: [
          Image.network( 
            data.image,
            fit: BoxFit.cover,
          ),
          Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data.title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              data.description,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}