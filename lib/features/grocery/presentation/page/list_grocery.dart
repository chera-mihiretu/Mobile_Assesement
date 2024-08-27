import 'package:flutter/material.dart';
import 'package:mobile_assessment/cores/constants/constants.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/grocery_card.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/search_input.dart';

class ListGrocery extends StatelessWidget {
  static const String routes = '/grocery_list';
  final TextEditingController searchControl = TextEditingController();
  ListGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.white,
      appBar: AppBar(
        backgroundColor: MyTheme.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/images/burger_icon.png',
              ),
            ),
            Text(
              'Burger',
              style: MyTheme.titleFont(MyTheme.black, MyTheme.normalTitle22),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchInput(
            hint: '',
            control: searchControl,
            search: () {},
            onChange: (val) {},
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const GroceryCard(
                    imageUrl: AppConstant.imageUrl,
                    name: 'Burger',
                    price: 10,
                    discount: 2,
                    rating: 5.0,
                  );
                }),
          )
        ],
      ),
    );
  }
}
