import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';

class GroceryCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int price;
  final int discount;
  final double rating;
  const GroceryCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.discount,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: MyTheme.whiteGrey, spreadRadius: 2, blurRadius: 10)
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: MyTheme.paddingAll(5),
            child: ClipRRect(
              borderRadius: MyTheme.radiusAll(10),
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
                      height: 160,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: MyTheme.whiteGrey,
                      ),
                    );
                  }
                },
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 160,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: MyTheme.whiteGrey,
                  ),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: MyTheme.paddingHorizontal(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style:
                        MyTheme.titleFont(MyTheme.black, MyTheme.tinyTitle12)),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: MyTheme.paddingHorizontal(10),
                child: const Icon(
                  Icons.star,
                  color: MyTheme.yellow,
                  size: 20,
                ),
              ),
              Text(
                '$rating',
                style: MyTheme.normalText(MyTheme.black, MyTheme.tinyTitle12),
              ),
              const Expanded(child: SizedBox()),
              Text(
                '\$ $price',
                style:
                    MyTheme.lightTitle(MyTheme.grey, MyTheme.tinyTitle12, true),
              ),
              Padding(
                padding: MyTheme.paddingHorizontal(10),
                child: Text(
                  '\$ ${price - discount}',
                  style: MyTheme.titleFont(MyTheme.orange, MyTheme.tinyTitle12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
