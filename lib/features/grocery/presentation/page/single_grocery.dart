import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/additional_option.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/detail_image.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/detail_info.dart';

class SingleGrocery extends StatelessWidget {
  static const String routes = '/single_grocery';
  const SingleGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyTheme.white,
      body: Column(
        children: [
          DetailImage(
            imageUrl:
                'https://www.foodandwine.com/thmb/jldKZBYIoXJWXodRE9ut87K8Mag=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
          ),
          DetailInfo(
            name: 'Chicken Burger',
            price: 10,
            rating: 4.9,
            discount: 4,
            desc: 'Hellow this is chera mihiretu',
          ),
          AdditionalOption(options: [1, 2, 3, 4])
        ],
      ),
    );
  }
}
