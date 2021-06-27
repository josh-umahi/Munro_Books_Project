import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../BLoC/cubits/details_cubit.dart';
import '../../theme/constants.dart';
import '../../../data/models/book_details.dart';
import '../../global_components/more_widgets.dart';
import '../../global_components/internet_error_container.dart';
import '../../../data/models/book.dart';

part 'components/add_to_cart_button.dart';
part 'components/image_stack.dart';
part 'components/text_details.dart';
part 'components/details_error_container.dart';

class BookDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (_, state) {
          if (state is DetailsLoaded) {
            return Stack(
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ImageStack(state.bookDetails.imageUrl),
                    TextDetails(state.bookDetails),
                  ],
                ),
                AddToCartButton(),
              ],
            );
          } else if (state is DetailsLoading || state is DetailsInitial) {
            return Container(
              color: placeholderColor,
              height: heightOfImageStack,
            );
          } else {
            return DetailsErrorContainer();
          }
        },
      ),
    );
  }
}
