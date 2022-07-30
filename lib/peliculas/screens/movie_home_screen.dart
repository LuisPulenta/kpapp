import 'package:flutter/material.dart';
import 'package:kpapp/peliculas/search/search_delegate.dart';
import 'package:kpapp/peliculas/widgets/card_swiper.dart';
import 'package:kpapp/peliculas/widgets/movie_slider.dart';
import 'package:provider/provider.dart';
import 'package:kpapp/peliculas/providers/movies_provider.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () => showSearch(
                  context: context, delegate: MovieSearchDelegate())),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //CardSwiper
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            //Listado horizontal de películas
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares',
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
            MovieSlider(
              movies: moviesProvider.topRatedMovies,
              title: 'Top',
              onNextPage: () => moviesProvider.getTopMovies(),
            ),
            MovieSlider(
              movies: moviesProvider.upcomingMovies,
              title: 'A estrenar',
              onNextPage: () => moviesProvider.getUpComingMovies(),
            ),
          ],
        ),
      ),
    );
  }
}
