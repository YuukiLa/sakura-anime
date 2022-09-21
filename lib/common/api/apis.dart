import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:sakura_anime/common/model/anime.dart';

import '../utils/http.dart';

class Apis {

  static Future<Document?> _parseDoc(String url) async{
    String html = await HttpUtil.getPage(url);
    if(html.isEmpty) {
      return null;
    }
    return parse(html);
  }

  static Future<List<Anime>> getRecommend(int pageNum) async {
    Document? doc = await _parseDoc("https://www.yhdmp.live/recommend/?pagesize=24&pageindex=$pageNum");
    if(doc==null) {
      return [];
    }
    var children = doc.getElementsByClassName("lpic")[0].getElementsByTagName("ul")[0].children;
    List<Anime> animes = children.map((e) {
      var anime = Anime(
          e.getElementsByTagName("a")[0].attributes["href"]?? "",
          e.getElementsByTagName("h2")[0].getElementsByTagName("a")[0].innerHtml,
          e.getElementsByTagName("a")[0].getElementsByTagName("img")[0].attributes["src"]?? "",
          e.getElementsByTagName("p")[0].innerHtml,
          e.getElementsByTagName("span")[1].innerHtml.substring(3));
      if(!anime.img.contains("http")) {
        anime.img = "https:${anime.img}";
      }
      return anime;
    }).toList();

    return animes;
  }

  static getFilter() async{
    Document? doc = await _parseDoc("https://www.yhdmp.live/list/");
    if(doc==null) {
      return [];
    }
    var list = doc.getElementById("search-list")!.children;
    for(Element element in list) {
      var ul = element.getElementsByTagName("ul");
      if(ul.isEmpty) {
        continue;
      }
      var lis = element.getElementsByTagName("ul")[0].children;
      for (var value in lis) {
        print(value.getElementsByTagName("a")[0].innerHtml);
      }
    }
  }

}