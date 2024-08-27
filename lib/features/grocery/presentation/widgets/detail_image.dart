import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';

class DetailImage extends StatelessWidget {
  final String imageUrl;
  const DetailImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyTheme.paddingHorizontal(5),
      height: 300,
      child: Stack(
        children: [
          imageUrl == ''
              ? Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: MyTheme.grey,
                    borderRadius: MyTheme.radiusBottom(10),
                  ),
                )
              : ClipRRect(
                  borderRadius: MyTheme.radiusBottom(10),
                  child: Image.network(
                    imageUrl,
                    loadingBuilder: (
                      context,
                      thisChild,
                      progress,
                    ) {
                      if (progress == null) {
                        return thisChild;
                      } else {
                        return Container(
                          height: 300,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: MyTheme.whiteGrey,
                          ),
                        );
                      }
                    },
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                ),
          ClipRRect(
            borderRadius: MyTheme.radiusBottom(10),
            child: Container(
              color: MyTheme.grayTransparent,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
