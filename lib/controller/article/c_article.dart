import '../../constant/data_food.dart';
import '../../model/article/m_article_app.dart';

class ControllerArticle {
  // list for data Article
  List<ModelArticleApp> dataArticle = [
    // index 0
    ModelArticleApp(
      title: DataFood.title1,
      image: DataFood.image1,
      url: DataFood.link1,
      source: DataFood.source1,
      date: DataFood.date1,
      description: DataFood.description1,
    ),
    // index 1
    ModelArticleApp(
      title: DataFood.title2,
      image: DataFood.image2,
      url: DataFood.link2,
      source: DataFood.source2,
      date: DataFood.date2,
      description: DataFood.description2,
    ),

    // index 2
    ModelArticleApp(
      title: DataFood.title3,
      image: DataFood.image3,
      url: DataFood.link3,
      source: DataFood.source3,
      date: DataFood.date3,
      description: DataFood.description3,
    ),
    // index 3
    ModelArticleApp(
      title: DataFood.title4,
      image: DataFood.image4,
      url: DataFood.link4,
      source: DataFood.source4,
      date: DataFood.date4,
      description: DataFood.description4,
    ),
    // index 4
    ModelArticleApp(
      title: DataFood.title5,
      image: DataFood.image5,
      url: DataFood.link5,
      source: DataFood.source5,
      date: DataFood.date5,
      description: DataFood.description5,
    ),
    // index 5
    ModelArticleApp(
      title: DataFood.title6,
      image: DataFood.image6,
      url: DataFood.link6,
      source: DataFood.source6,
      date: DataFood.date6,
      description: DataFood.description6,
    ),
    // index 6
    ModelArticleApp(
      title: DataFood.title7,
      image: DataFood.image7,
      url: DataFood.link7,
      source: DataFood.source7,
      date: DataFood.date7,
      description: DataFood.description7,
    ),
  ];

  /// [getLength] return number item in list
  int getLength() => dataArticle.length;

  /// [getArticle] return dataArticle by index
  ModelArticleApp getArticle(int index) => dataArticle.elementAt(index);
}