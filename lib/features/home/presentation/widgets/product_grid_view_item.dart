import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:route_task/features/home/data/models/product_model.dart';

import '../../../../core/utils/app_colors.dart';

class ProductGridViewItem extends StatelessWidget {
  const ProductGridViewItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightBlue,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Image And Heart Icon
          Stack(
            alignment: Alignment.topRight,
            children: [
              // Image And Error Image
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: productModel.images.isNotEmpty
                    ? Image.network(
                        productModel.images[0],
                        fit: BoxFit.cover,
                        height: 80.w,
                        width: double.infinity,
                      )
                    : Icon(
                        Icons.error,
                        size: 25.dg,
                      ),
              ),

              // Heart Icon
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: AppColors.white,
                    radius: 20.r,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconlyLight.heart,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name Product
                Text(
                  productModel.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal),
                ),
                // Desc Product
                Text(
                  productModel.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal),
                ),

                SizedBox(
                  height: 10.h,
                ),

                // Price
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        'EGP: ${productModel.discountPercentage}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                color: AppColors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '${productModel.price.toString()} EGP',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: AppColors.lightBlue,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColors.primaryColor,
                                ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                // Rating
                Row(
                  children: [
                    Text(
                      'Review (${productModel.rating.toString()})',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Icon(
                      IconlyBold.star,
                      size: 20.sp,
                      color: AppColors.yellow,
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 12.r,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                              size: 19.sp,
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
