import 'package:assignment3/utils/constants/app_colors.dart';
import 'package:assignment3/utils/constants/app_images.dart';
import 'package:assignment3/utils/constants/app_string.dart';
import 'package:assignment3/utils/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assignment3Screen extends StatelessWidget {
  const Assignment3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),

            /// add crose icon
            child: SvgPicture.asset(AppImage.closeIcon),
          )),
      backgroundColor: AppColor.bodyColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),

            /// add search text
            Text(
              MyString.search,
              style: mediumSize,
            ),
            const SizedBox(height: 12),

            /// search icon / text / mic icon
            Row(
              children: [
                Container(
                  height: 45,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.boxColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        /// search icon
                        SvgPicture.asset(AppImage.searchIcon),
                        const SizedBox(
                          width: 4,
                        ),

                        /// text field
                        Text(
                          MyString.textFild,
                          style: smallSize,
                        ),
                        const SizedBox(width: 20),

                        /// mic icon
                        SvgPicture.asset(
                          AppImage.micIcon,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColor.boxColor,
                  ),

                  /// filter icon
                  child: SvgPicture.asset(AppImage.filterIcon),
                ),
              ],
            ),
            const SizedBox(height: 20),

            /// text recent search and clear text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyString.searchText,
                  style: mediumSize,
                ),
                Text(
                  MyString.clearAll,
                  style: textSize,
                )
              ],
            ),
            const SizedBox(height: 10),

            /// container / food1 image /food2 image/title and subtitle
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  /// global widget
                  girdWidget(AppImage.foodImage1, MyString.foodName,
                      MyString.foodTitle),
                  girdWidget(AppImage.foodImage2, MyString.foodName1,
                      MyString.foodTitle1),
                  girdWidget(AppImage.foodImage2, MyString.foodName1,
                      MyString.foodTitle1),
                  girdWidget(AppImage.foodImage2, MyString.foodName1,
                      MyString.foodTitle1),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            /// comment this part cause create custom widget

            /// recommend text
            Text(
              MyString.recommendText,
              style: mediumSize.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),

            /// food 3 / 4 image /title/subtitle add
            Row(
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(AppImage.foodImage3),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyString.nameFood,
                      style: largeText.copyWith(fontSize: 18),
                    ),
                    Text(MyString.titleNameFood),
                    Row(
                      children: [
                        SvgPicture.asset(AppImage.ratingIcon),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(MyString.ratingText)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(AppImage.foodImage4),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyString.nameFood1,
                      style: largeText.copyWith(fontSize: 18),
                    ),
                    Text(MyString.nameFoodTitle),
                    Row(
                      children: [
                        SvgPicture.asset(AppImage.ratingIcon),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(MyString.ratingText)
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(AppImage.foodImage5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyString.nameFood2,
                      style: largeText.copyWith(fontSize: 18),
                    ),
                    Text(MyString.titleName),
                    Row(
                      children: [
                        SvgPicture.asset(AppImage.ratingIcon),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(MyString.ratingText)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// creation global widget
  Widget girdWidget(String photo, String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(image: AssetImage(photo), fit: BoxFit.fill),
          ),
        ),
        const SizedBox(height: 5),
        Text(title, style: largeText),
        Text(subtitle, style: smallSizeText),
      ],
    );
  }
}
