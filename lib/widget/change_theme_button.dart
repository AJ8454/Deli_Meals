import 'package:deli_meals/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
          color: Theme.of(context).iconTheme.color,
        ),
        Switch.adaptive(
          value: themeProvider.isDarkMode,
          onChanged: (value) {
            final provider = Provider.of<ThemeProvider>(context, listen: false);
            provider.toogleTheme(value);
          },
          inactiveThumbColor: Theme.of(context).iconTheme.color,
          activeColor: Theme.of(context).iconTheme.color,
        ),
      ],
    );
  }
}
