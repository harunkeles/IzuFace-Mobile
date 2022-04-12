import 'package:flutter/material.dart';
import 'package:izuface_mobile/core/util/components/buttons/CustomTextButton.dart';
import 'package:izuface_mobile/core/util/components/colors/CustomAppColors.dart';
import 'package:izuface_mobile/core/util/components/texts/CustomText.dart';
import 'package:izuface_mobile/core/util/extension/ContextExtension.dart';

class PublishedCard {
  @required
  int? cardId;
  @required
  String? cardOwnerImage;
  @required
  String? cardOwnerName;
  @required
  String? category;
  @required
  String? cardMedia;
  @required
  String? cardContentHeader;
  @required
  String? cardContentText;
  @required
  String? cardPublishedDate;
  Set<Map<String, Object>>? likersList = {
    {'userId': 1, 'userAsset': '/asset1', 'userName': 'Muhammet Harun Keleş'},
    {'userId': 2, 'userAsset': '/asset2', 'userName': 'Merve Kuru'},
  };
  Set<Map<String, Object>>? commentList = {
    {
      'userId': 1,
      'userAsset': '/asset1',
      'userName': 'Muhammet Harun Keleş',
      'userCommentText': 'Burası yorum satırıdır 1.'
    },
    {
      'userId': 2,
      'userAsset': '/asset2',
      'userName': 'Merve Kuru',
      'userCommentText': 'Burası yorum satırıdır 2.'
    },
  };

  PublishedCard({
    this.cardId,
    this.cardOwnerImage,
    this.cardOwnerName,
    this.category,
    this.cardMedia,
    this.cardContentHeader,
    this.cardContentText,
    this.cardPublishedDate,
    this.likersList,
    this.commentList,
  });

  Widget design(context) {
    return Container(
      width: ContextExtension(context).infinityWidth,
      // height: ContextExtension(context).infinityHeight,
      // constraints: BoxConstraints(
      //     maxHeight: ContextExtension(context).dynamicHeight(0.8)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: PaddingExtension(context).mediumPaddingAllow,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 14.0,
                      backgroundImage: NetworkImage("$cardOwnerImage"),
                    ),
                    SizedBox(width: 8),
                    CustomText(
                            text: "$cardOwnerName",
                            wordSpacing: 0,
                            letterSpacing: 0,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)
                        .customText_4(),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 7,
                      child: Icon(
                        Icons.circle,
                        size: 4,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    CustomText(
                      text: "$category",
                      fontSize: 12,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                    ).customText_4(),
                  ],
                ),
              ),
              CustomTextButton(
                icon: Icons.more_horiz,
                size: Size(10, 12),
              ).customTextButton(context)
            ],
          ),
          Container(
            width: ContextExtension(context).infinityWidth,
            constraints: BoxConstraints(maxHeight: 600),
            child: Image(
              image: NetworkImage("$cardMedia"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(
                          width: 45,
                          height: 45,
                          innerPadding: EdgeInsets.all(5),
                          icon: Icons.favorite_outline,
                        ).customTextButton(context),
                        CustomTextButton(
                          width: 42,
                          height: 42,
                          innerPadding: EdgeInsets.all(5),
                          icon: Icons.comment_rounded,
                        ).customTextButton(context),
                        CustomTextButton(
                          width: 42,
                          height: 42,
                          innerPadding: EdgeInsets.all(5),
                          icon: Icons.share,
                        ).customTextButton(context),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: AppColors().bloodRed,
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: AppColors().lightGray,
                          size: 8,
                        ),
                        Icon(
                          Icons.circle,
                          color: AppColors().lightGray,
                          size: 8,
                        ),
                        Icon(
                          Icons.circle,
                          color: AppColors().lightGray,
                          size: 8,
                        ),
                        Icon(
                          Icons.circle,
                          color: AppColors().lightGray,
                          size: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      width: 42,
                      height: 42,
                      innerPadding: EdgeInsets.all(5),
                      icon: Icons.bookmark_outline,
                    ).customTextButton(context),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: AppColors().white,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage: NetworkImage("$cardOwnerImage"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: AppColors().white,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage: NetworkImage("$cardOwnerImage"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: AppColors().white,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundImage: NetworkImage("$cardOwnerImage"),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: CustomText(
                          text: "Merve Kuru ve 9 kişi beğendi",
                          wordSpacing: 0,
                          letterSpacing: 0,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)
                      .customText_4(),
                ),
              ],
            ),
          ),
          Container(
            width: ContextExtension(context).infinityWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  child: CustomText(
                          text: "$cardContentHeader",
                          wordSpacing: 0,
                          letterSpacing: 0,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)
                      .customText_4(),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
                  width: ContextExtension(context).infinityWidth,
                  child: CustomText(
                    text: "$cardContentText",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ).customText_4(),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "$cardPublishedDate",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ).customText_4(),
                Container(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    width: 42,
                    height: 42,
                    innerPadding: EdgeInsets.all(5),
                    icon: Icons.arrow_right_rounded,
                  ).customTextButton(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
