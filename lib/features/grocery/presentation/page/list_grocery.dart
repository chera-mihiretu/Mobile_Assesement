import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_assessment/cores/constants/constants.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_bloc.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_event.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_state.dart';
import 'package:mobile_assessment/features/grocery/presentation/page/single_grocery.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/grocery_card.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/search_input.dart';

class ListGrocery extends StatelessWidget {
  static const String routes = '/grocery_list';
  final TextEditingController searchControl = TextEditingController();
  ListGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GroceryBloc>(context).add(GetAllGroceryEvent());
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
            hint: 'Search',
            control: searchControl,
            search: () {},
            onChange: (val) {},
          ),
          BlocBuilder<GroceryBloc, GroceryState>(
            builder: (context, state) {
              return BlocBuilder<GroceryBloc, GroceryState>(
                builder: (context, state) {
                  if (state is GroceryLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is AllGroceryLoadedState) {
                    return Expanded(
                      child: GridView.builder(
                        itemCount: state.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<GroceryBloc>(context).add(
                                  GetGroceryEvent(id: state.data[index].id));
                              Navigator.pushNamed(
                                  context, SingleGrocery.routes);
                            },
                            child: GroceryCard(
                              imageUrl: AppConstant.imageUrl,
                              name: state.data[index].title,
                              price: state.data[index].price,
                              discount: state.data[index].discount,
                              rating: state.data[index].rating,
                            ),
                          );
                        },
                      ),
                    );
                  } else if (state is GroceryErrorState) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container(
                      color: Colors.red,
                    );
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
