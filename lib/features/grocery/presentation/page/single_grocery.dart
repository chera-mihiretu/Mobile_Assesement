import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_assessment/cores/theme/my_theme.dart';
import 'package:mobile_assessment/features/grocery/data/model/option_model.dart';
import 'package:mobile_assessment/features/grocery/domain/entity/option_entity.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_bloc.dart';
import 'package:mobile_assessment/features/grocery/presentation/bloc/grocery_state.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/additional_option.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/detail_image.dart';
import 'package:mobile_assessment/features/grocery/presentation/widgets/detail_info.dart';

class SingleGrocery extends StatelessWidget {
  static const String routes = '/single_grocery';
  const SingleGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<GroceryBloc, GroceryState>(
            builder: (context, state) {
              if (state is GroceryLoadedState) {
                return DetailImage(
                  imageUrl: state.data.imageUrl,
                );
              }
              return const DetailImage(
                imageUrl: '',
              );
            },
          ),
          BlocBuilder<GroceryBloc, GroceryState>(
            builder: (context, state) {
              if (state is GroceryLoadedState) {
                return DetailInfo(
                  name: state.data.title,
                  price: state.data.price,
                  rating: state.data.rating,
                  discount: state.data.discount,
                  desc: state.data.description,
                );
              } else {
                return const DetailInfo(
                  name: '__________',
                  price: 0,
                  rating: 0,
                  discount: 0,
                  desc: '____________',
                );
              }
            },
          ),
          Padding(
            padding: MyTheme.paddingHorizontal(20),
            child: Text(
              'Additional Option',
              style:
                  MyTheme.titleFont(MyTheme.black, MyTheme.normalSmalTitle20),
            ),
          ),
          BlocBuilder<GroceryBloc, GroceryState>(
            builder: (context, state) {
              if (state is GroceryLoadedState) {
                return AdditionalOption(options: state.data.options);
              } else {
                return const AdditionalOption(options: [
                  OptionEntity(
                    id: '66be479671fccd1506882d28',
                    name: 'Add Bacon',
                    price: 1,
                  ),
                ]);
              }
            },
          )
        ],
      ),
    );
  }
}
