import 'package:flutter/material.dart';

class CustomHero extends StatelessWidget {
  const CustomHero({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      // height: 260.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      
        child: Stack(
          children: [
            Positioned.fill(
              // child: Opacity(
              // opacity: 0.5, // Set the desired opacity value (between 0.0 and 1.0)
              child: Image.network(
                'https://i.pinimg.com/564x/6c/2c/2d/6c2c2d77b5fd74c800dacd2b850517ab.jpg',
                fit: BoxFit.cover,
              ),
            // ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Welcome to KFood',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Discover the best Korean Food!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
        ),
    ),
  );
  }
}