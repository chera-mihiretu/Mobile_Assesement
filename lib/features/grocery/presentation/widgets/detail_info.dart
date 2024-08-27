import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';

class DetailInfo extends StatelessWidget {
  final String name;
  final double price;
  final double rating;
  final double discount;
  final String desc;
  const DetailInfo(
      {super.key,
      required this.name,
      required this.price,
      required this.rating,
      required this.discount,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyTheme.paddingAll(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: MyTheme.titleFont(MyTheme.black, MyTheme.normalTitle22),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '\$ $price',
                style: MyTheme.lightTitle(
                    MyTheme.grey, MyTheme.normalSmalTitle20, true),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '\$ ${price - discount}',
                style: MyTheme.titleFont(MyTheme.orange, MyTheme.normalTitle22),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: MyTheme.yellow,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                '$rating',
                style: MyTheme.normalText(
                    MyTheme.black, MyTheme.normalSmalTitle20),
              ),
              const Expanded(child: SizedBox()),
              Text(
                'See all review',
                style: MyTheme.linkText(
                  MyTheme.grey,
                  MyTheme.smallTitle16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  desc,
                  style: MyTheme.lightTitle(MyTheme.grey, MyTheme.smallTitle16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              RichText(
                text: TextSpan(
                  text: 'See  More',
                  style: MyTheme.linkText(
                    MyTheme.grey,
                    MyTheme.smallTitle16,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
