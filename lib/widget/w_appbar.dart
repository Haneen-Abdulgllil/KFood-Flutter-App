import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_names.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(size: 25, color: Colors.white),
      // leading: Image.asset('assets/UI/logo.jpg'),
      // children: [
      //   Image.asset('assets/UI/logo.jpg', fit: BoxFit.contain, height: 32)
      // ]
      title: Text(
        // leading: Image.asset('assets/UI/logo.jpg'),
        AppName.name,
        style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),    
      ),
      centerTitle: false,
      backgroundColor: Colors.green,
      actions: [
      // action button
        IconButton(
          icon: const Icon( Icons.search ),
          onPressed: () { },
        ),
       IconButton(
          icon: const Icon( Icons.share ),
          onPressed: () { },
        ),


      Stack(
        children: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button pressed
            },
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(
                minWidth: 16.0,
                minHeight: 16.0,
              ),
              child: const Text(
                '20', // Replace with the actual notification count
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
     ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  

}
