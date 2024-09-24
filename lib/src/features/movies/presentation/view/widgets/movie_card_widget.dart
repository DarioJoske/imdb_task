import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../../core/router/routes.dart';
import '../../../../../core/theme/q_colors.dart';
import '../../../../favourites/presentation/bloc/favourites_bloc.dart';
import '../../../domain/entities/movie.dart';
import 'genres_widget.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () {
          context.push(Routes.movieDetails, extra: movie);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAlias,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                imageErrorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported_outlined, size: 100),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                image: 'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                      const SizedBox(width: 4),
                      Text('${movie.voteAverage.toStringAsFixed(2)}/10 IMDb'),
                    ],
                  ),
                  GenresWidget(movie: movie),
                ],
              ),
            ),
            FavouritesIconWidget(movie: movie),
          ],
        ),
      ),
    );
  }
}

class FavouritesIconWidget extends StatelessWidget {
  const FavouritesIconWidget({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        return IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          style: const ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          icon: state.movies.contains(movie)
              ? const Icon(Icons.bookmark_added, color: QColors.primary)
              : const Icon(Icons.bookmark_outline, color: Colors.grey),
          onPressed: () {
            // check if movie is already in favourites
            if (context.read<FavouritesBloc>().state.movies.contains(movie)) {
              context.read<FavouritesBloc>().add(FavouritesEvent.removeFavourite(movieId: movie.id));
              return;
            }
            context.read<FavouritesBloc>().add(FavouritesEvent.addFavourite(movie: movie));
          },
        );
      },
    );
  }
}
