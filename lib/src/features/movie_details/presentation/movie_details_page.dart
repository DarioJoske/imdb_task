import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../core/theme/q_colors.dart';
import '../../movies/domain/entities/movie.dart';
import '../../movies/presentation/view/widgets/genres_widget.dart';
import '../../movies/presentation/view/widgets/movie_card_widget.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage.memoryNetwork(
              width: 500,
              height: 600,
              imageErrorBuilder: (context, error, stackTrace) => const Padding(
                padding: EdgeInsets.all(30.0),
                child: Icon(
                  Icons.image_not_supported_outlined,
                  size: 200,
                ),
              ),
              placeholder: kTransparentImage,
              image: 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -32.0, 0.0),
              decoration: const BoxDecoration(
                color: QColors.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            movie.title,
                            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                        FavouritesIconWidget(movie: movie),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                        const SizedBox(width: 4),
                        Text('${movie.voteAverage.toString()}/10 IMDb'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    GenresWidget(movie: movie),
                    const SizedBox(height: 40),
                    const Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(movie.overview),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
