import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/theme_provider.dart';
import 'screens/category_meals_screen.dart';
import 'screens/home_screen.dart';
import 'utility/theme_data.dart';

void main() {
  runApp(const MyApp());
}

// TODO: Continue from categoryMeal screen ..

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: MyThemeData.lightTheme,
          darkTheme: MyThemeData.darkTheme,
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/categoryMealsScreen': (context) => const CategoryMealsScreen(),
          },
        );
      },
    );
  }
}
