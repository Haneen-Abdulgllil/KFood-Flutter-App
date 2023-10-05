import 'package:app/widget/video/w_card_image_video.dart';
import 'package:app/widget/video/w_card_video.dart';
import 'package:flutter/material.dart';
import '../../controller/video/c_video.dart';
import '../../views/web_view/v_webview.dart';

class WidgetBodyVideo extends StatelessWidget {
  const WidgetBodyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ControllerVideo().getLength(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) =>
                        ViewWebView(url: ControllerVideo().getVideo(index).url),
                  );
                  Navigator.push(context, route);
                },
                child: WidgetImageVideo(
                  width: 150,
                  height: 150,
                  image: ControllerVideo().getVideo(index).image,
                ),
              );
            },
          ),
        ),
        // video scroll verticals
        Expanded(
          child: ListView.builder(
            itemCount: ControllerVideo().getLength(),
            itemBuilder: (context, index) => WidgetCardVide(
              data: ControllerVideo().getVideo(index),
            ),
          ),
        ),
      ],
    );
  }
}