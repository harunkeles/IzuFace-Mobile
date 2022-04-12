import 'package:dio/dio.dart';
import 'package:izuface_mobile/core/constants/Api.dart';

class WebService {
  Future<dynamic> fetchPublishedCards() async {
    final response = await Dio().get(Apis.GET__ALL_NORMAL_POSTS_URL);
    if (response.statusCode == 200)
      return response;
    else
      print("HATAAAAA : ${response.statusCode}");
    // throw Exception('Failed to load album');
  }
}
