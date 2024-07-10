// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:post_bet/core/Theme/color_extension.dart';
// import 'package:post_bet/core/colors/colors_dark.dart';
// import 'package:post_bet/core/colors/colors_light.dart';

// import '../../constants.dart';
// import '../utils/styles.dart';

// ThemeData themeLightData = ThemeData(
//   scaffoldBackgroundColor: ColorsLight.kwhiteKey,
//   extensions: const <ThemeExtension<dynamic>>[
//     MyColors.light,
//   ],
//   textTheme: GoogleFonts.poppinsTextTheme(),
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     unselectedItemColor: Colors.grey,
//     selectedItemColor: kPrimaryKey,
//     elevation: 0.0,
//     type: BottomNavigationBarType.fixed,
//   ),
//   appBarTheme: AppBarTheme(
//     systemOverlayStyle: const SystemUiOverlayStyle(
//       statusBarBrightness: Brightness.dark,
//       statusBarColor: Colors.black,
//     ),
//     iconTheme: const IconThemeData(color: kPrimaryKey),
//     backgroundColor: Colors.white,
//     toolbarHeight: 70,
//     elevation: 0,
//     titleTextStyle: Styles.textStyle12,
//   ),
//   tabBarTheme: TabBarTheme(
//       labelColor: kPrimaryKey,
//       indicatorColor: kPrimaryKey,
//       dividerColor: kPrimaryKey,
//       overlayColor: MaterialStateProperty.all(kPrimaryKey),
//       unselectedLabelColor: kPrimaryKey,
//       mouseCursor: MaterialStateMouseCursor.clickable),
// );

// ThemeData themeDarkData = ThemeData(
//   scaffoldBackgroundColor: ColorsLight.kBlackColor,
//   extensions: const <ThemeExtension<dynamic>>[
//     MyColors.light,
//   ],
//   textTheme: const TextTheme(
//     displaySmall: TextStyle(
//       fontSize: 14,
//       color: ColorsDark.kwhiteKey,
//       //fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
//     ),
//   ),
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     unselectedItemColor: Colors.grey,
//     selectedItemColor: kPrimaryKey,
//     elevation: 0.0,
//     type: BottomNavigationBarType.fixed,
//   ),
//   appBarTheme: AppBarTheme(
//     systemOverlayStyle: const SystemUiOverlayStyle(
//       statusBarBrightness: Brightness.dark,
//       statusBarColor: Colors.black,
//     ),
//     iconTheme: const IconThemeData(color: kPrimaryKey),
//     backgroundColor: Colors.white,
//     toolbarHeight: 70,
//     elevation: 0,
//     titleTextStyle: Styles.textStyle12,
//   ),
//   tabBarTheme: TabBarTheme(
//       labelColor: kPrimaryKey,
//       indicatorColor: kPrimaryKey,
//       dividerColor: kPrimaryKey,
//       overlayColor: MaterialStateProperty.all(kPrimaryKey),
//       unselectedLabelColor: kPrimaryKey,
//       mouseCursor: MaterialStateMouseCursor.clickable),
// );
import 'package:flutter/material.dart';
import 'package:route_task/core/utils/styles.dart';
import 'package:route_task/costants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    indicatorColor: Colors.black,
    shadowColor: Colors.black.withOpacity(0.2),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: kPrimaryKey,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: kPrimaryKey, // Change primary color as needed
    // Change accent color as needed
    textTheme: TextTheme(
        bodySmall: Styles.textStyle12Blue,
        displayLarge: Styles.textStyle32Blue,
        displayMedium: Styles.textStyle18Black,
        bodyLarge: Styles.textStyle12Black,
        bodyMedium: Styles.textStyle12BoldGrey,
        titleMedium: const TextStyle(color: Colors.black),
        titleSmall: Styles.textStyle12Orange,
        displaySmall: Styles.textStyle20Black,
        headlineMedium: Styles.textStyle14Grey,
        headlineSmall: Styles.textStyle14Blck,
        titleLarge: Styles.textStyle24BoldBlack,
        labelLarge: Styles.textStyle16White,
        labelMedium: Styles.textStyle16Black,
        headlineLarge: Styles.textStyle24Black

        // Text color for light mode
        ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderSide:
            const BorderSide(color: Colors.grey), // Border color for light mode
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
  );

  static ThemeData darkTheme = ThemeData(
    indicatorColor: Colors.white,

    cardColor: Colors.black,
    shadowColor: Colors.white.withOpacity(0.1),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedItemColor: kPrimaryKey,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
    ),
    scaffoldBackgroundColor: Colors.black,

    primaryColor: kPrimaryKey, // Change primary color as needed
    textTheme: TextTheme(
        bodySmall: Styles.textStyle12Blue,
        displayLarge: Styles.textStyle32Blue,
        displayMedium: Styles.textStyle18White,
        bodyLarge: Styles.textStyle12White,
        bodyMedium: Styles.textStyle12BoldGrey,
        titleMedium: const TextStyle(color: Colors.white),
        titleSmall: Styles.textStyle12Orange,
        displaySmall: Styles.textStyle20BoldWhite,
        headlineMedium: Styles.textStyle14Grey,
        headlineSmall: Styles.textStyle14White,
        titleLarge: Styles.textStyle14White,
        labelLarge: Styles.textStyle16White,
        labelMedium: Styles.textStyle16Black,
        headlineLarge: Styles.textStyle24Black

        // Text color for light mode
        ),
    brightness: Brightness.dark,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.black,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderSide:
            const BorderSide(color: Colors.white), // Border color for dark mode
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
