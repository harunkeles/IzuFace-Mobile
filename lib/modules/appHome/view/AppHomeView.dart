import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart'; //for date format
import 'package:izuface_mobile/core/constants/Api.dart';
import 'package:izuface_mobile/core/util/components/cards/PublishedCard.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';
import 'package:izuface_mobile/modules/appHome/viewmodel/AppHomeViewModel.dart';

// ignore: must_be_immutable
class PublishedCardView extends StatelessWidget {
  final normalPostViewModel = NormalPostViewModel();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) => controller());
  }

  controller() {
    if (normalPostViewModel.state == NormalPostState.NORMAL) {
      normalPostViewModel.getPost();
      return Center(child: CircularProgressIndicator());
    } else {
      return Column(
        children: [
          Expanded(
            child: listViewBuilder(),
          ),
        ],
      );
    }
  }

  listViewBuilder() {
    //* Api sonucunun kontrolü yapıldı.
    switch (normalPostViewModel.state) {
      case NormalPostState.SUCCESS:
        return ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 10,
            color: AppColors().cultured,
          ),
          padding: EdgeInsets.zero,
          itemCount: normalPostViewModel.normalPostModel.length,
          itemBuilder: (context, index) =>
              publishedCard(index, context).design(context),
        );
      case NormalPostState.BUSY:
        return ListView.builder(
          reverse: false,
          itemCount: normalPostViewModel.normalPostModel.length,
          itemBuilder: (context, index) => Center(
            child: CircularProgressIndicator(),
          ),
        );
      case NormalPostState.ERROR:
        return Center(
          child: Text("Sayfa yüklenirken bir hata oluştu"),
        );
      default:
        return FlutterLogo();
    }
  }

  publishedCard(int index, BuildContext context) {
    //* İndex Reverse
    int reverseIndex = normalPostViewModel.normalPostModel.length - 1 - index;

    //*Date Format

    String dateTime = DateFormat("dd MMMM yy")
        .format(normalPostViewModel.normalPostModel[reverseIndex].createdDate!);
    return PublishedCard(
        cardId: normalPostViewModel.postOwner[reverseIndex].id,
        cardOwnerName:
            "${normalPostViewModel.postOwner[reverseIndex].fullName}",
        cardOwnerImage:
            "${Apis.IMAGE_URL}${normalPostViewModel.postOwner[reverseIndex].profImage}",
        cardMedia: "${normalPostViewModel.normalPostModel[reverseIndex].image}",
        cardContentHeader:
            "${normalPostViewModel.normalPostModel[reverseIndex].title}",
        cardContentText:
            "${normalPostViewModel.normalPostModel[reverseIndex].subTitle}",
        category:
            "${normalPostViewModel.normalPostModel[reverseIndex].subCategory}",
        cardPublishedDate: "$dateTime");
  }
}
