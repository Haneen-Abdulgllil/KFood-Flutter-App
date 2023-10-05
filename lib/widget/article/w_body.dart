import 'package:app/widget/article/w_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../controller/article/c_article.dart';
import '../../views/web_view/v_webview.dart';
import '../w_hero.dart';

class WidgetBodyArticle extends StatelessWidget {
  const WidgetBodyArticle({super.key});
  

  @override
  Widget build(BuildContext context) {
 return Column(
    children: [
      const Expanded(
        flex: 1,
        child: CustomHero(),
      ),
      Expanded(
        flex: 2,
        child: Swiper(
        itemCount: ControllerArticle().getLength(),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Center(
              child: InkWell(
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) => ViewWebView(
                      url: ControllerArticle().getArticle(index).url,
                    ),
                  );
                  Navigator.push(context, route);
                },
                child: CustomCard(
                  data: ControllerArticle().getArticle(index),
                ),
              ),
            ),
          );
        },
        loop: true,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.green, // Set the active dot color
            color: Colors.grey, // Set the inactive dot color
          ),
        ),
        control: const SwiperControl(
          color: Colors.green,
        ),
      ),
      ),
    ],
  ); 
  }
}