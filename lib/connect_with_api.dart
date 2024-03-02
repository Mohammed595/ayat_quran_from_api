import 'dart:convert';

import 'package:ayat_quran_from_api/models/ayat_model.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  static Future fetchAyat() async {
    String url =
        'https://api.quran.com/api/v4/quran/verses/indopak?chapter_number=1';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> getData = jsonDecode(response.body);
        List x = getData['verses'];

        // print(x[0]);
        // print(x[1]);
        // print(x[2]);
        // print(x[3]);
        // print(x[4]);
        // print(x[5]);
        // print(x[6]);

        List<AyatModel> aya = x.map((e) => AyatModel.toModel(e)).toList();
        for (var xx in aya) {
          print(xx.textIndopak);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
