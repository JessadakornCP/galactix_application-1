import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:galactix_application/app/home/view/home_screen.dart';
import 'package:galactix_application/config/app_theme.dart';
import 'package:galactix_application/core/navigation/navigation.dart';
import 'package:galactix_application/core/provider/provider_list.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() async {
  Intl.defaultLocale = 'th';
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: MaterialApp(
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme(context),
        darkTheme: AppTheme.darkTheme(context),
        home: const HomeScreen(),
        onGenerateRoute: NavigationRoute.instance.generateRoute,
      ),
    );
  }
}
