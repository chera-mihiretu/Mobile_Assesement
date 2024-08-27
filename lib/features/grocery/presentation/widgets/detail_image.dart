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
          ClipRRect(
            borderRadius: MyTheme.radiusBottom(10),
            child: Image.network(
              imageUrl,
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
