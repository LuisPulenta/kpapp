import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kpapp/newsapp/services/news_service.dart';
import 'package:kpapp/peliculas/providers/movies_provider.dart';
import 'package:kpapp/peliculas/screens/screens.dart';
import 'package:kpapp/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'login': (_) => const LoginScreen(),
        'news': (_) => const TabsPageScreen(),
        'movies': (_) => const MovieHomeScreen(),
        'details': (_) => DetailsScreen(),
      },
    );
  }
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false),
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MyApp(),
    );
  }
}
