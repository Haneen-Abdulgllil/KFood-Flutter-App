
// import 'package:card_swiper/card_swiper.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../constant/data_food.dart';
import '../../widget/article/w_body.dart';
// import '../../widget/article/w_card.dart';
import '../../widget/favorite/w_body_favorite.dart';
import '../../widget/upload-article/w_body_upload_article.dart';
import '../../widget/video/w_body_video.dart';
import '../../widget/w-drawer.dart';
import '../../widget/w_appbar.dart';
import '../../widget/w_bottom_navigation.dart';
// import '../../widget/w_hero.dart';

class ViewHome  extends StatefulWidget {
  const ViewHome({super.key}); 

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  int currentSelected = 0;
  late PageController controller;

  List<Widget> bodyPageView = const [
    WidgetBodyArticle(),
    WidgetBodyVideo(),
    WidgetBodyFavorite(),
    WidgetBodyUploadArticle(),
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      bottomNavigationBar: WidgetBottomNavigation(
        currentIndex: currentSelected,
        onIndexChanged: (index) {
          setState(() {
            currentSelected = index;
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
      ),
      drawer: const DrawerWidget(),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentSelected = value;
          });
        },
        children: bodyPageView,
      ),
    );
  }
}

