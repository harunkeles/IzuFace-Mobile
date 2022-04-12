import 'package:dio/dio.dart';
import 'package:izuface_mobile/core/constants/Api.dart';
import 'package:izuface_mobile/modules/appHome/model/AppHomeModel.dart';
import 'package:mobx/mobx.dart';
part 'AppHomeViewModel.g.dart';

class NormalPostViewModel = _NormalPostViewModelBase with _$NormalPostViewModel;
enum NormalPostState { NORMAL, SUCCESS, BUSY, ERROR }

abstract class _NormalPostViewModelBase with Store {
  @observable
  NormalPostState state = NormalPostState.NORMAL;

  @observable
  List<NormalPostModel> normalPostModel = [];

  @observable
  List<PostOwner> postOwner = [];

  @observable
  int postId = 1;

  @action
  Future<dynamic> getPost() async {
    try {
      state = NormalPostState.BUSY;

      final response = await Dio().get(Apis.GET__ALL_NORMAL_POSTS_URL);

      if (response.statusCode == 200) {
        var responseData = response.data as List;

        normalPostModel =
            responseData.map((e) => NormalPostModel.fromJson(e)).toList();

        postOwner = responseData
            .map((e) => PostOwner.fromJson(e['post_owner']))
            .toList();

        state = NormalPostState.SUCCESS;
      }
    } catch (e) {
      state = NormalPostState.ERROR;
    }
  }

  @action
  abc() {
    postId++;
  }
}







// import 'package:flutter/cupertino.dart';
// import 'package:izuface_mobile/modules/appHome/model/AppHomeModel.dart';
// import 'package:izuface_mobile/modules/appHome/service/Service.dart';

// enum PublishedCardState { IDLE, BUSY, ERROR }

// class PublishedCardViewModel with ChangeNotifier {
//   late PublishedCardState _state;

//   late List<PublishedCardModel> publishedCardList;

//   PublishedCardViewModel() {
//     publishedCardList = [];
//     _state = PublishedCardState.IDLE;
//     fetchPublishedCards();
//   }

//   PublishedCardState get state => _state;
//   set state(PublishedCardState state) {
//     _state = state;
//     notifyListeners();
//   }

//   Future<List<PublishedCardModel>> fetchPublishedCards() async {
//     try {
//       print("22222222222222222222222222222222222222222222222222");
//       state = PublishedCardState.BUSY;
//       publishedCardList = await WebService().fetchPublishedCards() as List<PublishedCardModel>;
//       print("publishedCardList : $publishedCardList ");
//       state = PublishedCardState.IDLE;
//       return publishedCardList;
//     } catch (e) {
//       state = PublishedCardState.ERROR;
//       return ["33333333333333333333333333333333333333"] as List<PublishedCardModel>;
//     }
//   }
// }
