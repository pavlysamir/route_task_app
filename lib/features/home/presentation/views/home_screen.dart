import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Assets/Assets.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/features/home/presentation/managers/productCubit/product_cubit.dart';
import 'package:route_task/features/home/presentation/widgets/product_grid_view_item.dart';
import 'package:route_task/features/home/presentation/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var productCubit = ProductCubit.get(context);
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            AssetsData.logo,
            width: 70.w,
          ),
        ),
        body: BlocConsumer<ProductCubit, ProductState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state is GetAllProductLoadingState
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  )
                : SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SearchBarWidget(onChanged: (value) {
                            productCubit.searchProduct(value);
                          }),
                          SizedBox(
                            height: 20.h,
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 16.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 0.85),
                              itemCount: productCubit.search.length,
                              itemBuilder: (context, index) {
                                return ProductGridViewItem(
                                  productModel: productCubit.search[index],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ));
  }
}
