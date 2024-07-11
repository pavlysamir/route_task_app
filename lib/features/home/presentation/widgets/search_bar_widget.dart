import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/costants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 9,
          child: SearchBar(
            backgroundColor: const WidgetStatePropertyAll(kWhiteColor),
            padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 20)),
            leading: Icon(
              Icons.search,
              size: 32.dg,
              color: AppColors.primaryColor,
            ),
            autoFocus: true,
            hintText: 'What do you want to Search for?',
            hintStyle: const WidgetStatePropertyAll(
              TextStyle(color: AppColors.grey),
            ),
            side: WidgetStateProperty.all(
              const BorderSide(
                color: AppColors.primaryColor,
                width: 1,
              ),
            ),
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onChanged: onChanged,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Flexible(
          flex: 1,
          child: Icon(
            IconlyLight.buy,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
