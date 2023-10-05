import 'package:app/widget/video/w_card_image_video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/video/m_video_app.dart';
import '../../views/web_view/v_webview.dart';

class WidgetCardVide extends StatelessWidget {
  const WidgetCardVide({super.key, required this.data});
  final ModelVideoApp data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.transparent,
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => ViewWebView(url: data.url),
          );
          Navigator.push(context, route);
        },
        child: Row(
          children: [
            // Image
            Expanded(child: WidgetImageVideo(image: data.image)),
            // space
            const SizedBox(width: 5),
            // info Article
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Time Video
                    Row(
                      children: [
                        // icon video
                        const Icon(CupertinoIcons.video_camera,
                            color: Colors.green),

                        // space
                        const SizedBox(width: 4),

                        // time text
                        Text(
                          data.duration,
                          style: GoogleFonts.abel(
                              color: Colors.green, fontSize: 16),
                        ),
                      ],
                    ),

                    // title
                    Text(
                      data.title,
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      data.source,
                      style: GoogleFonts.abel(color: Colors.green, fontSize: 16),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}