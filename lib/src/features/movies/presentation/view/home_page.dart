import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/movies/movies_bloc.dart';
import 'widgets/movie_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoviesBloc, MoviesState>(
      listener: (context, state) {
        if (state.status == MoviesStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }

        if (state.status == MoviesStatus.loaded) {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: state.movies!.length,
                  itemBuilder: (context, index) {
                    return MovieCard(movie: state.movies![index]);
                  }),
            ),
            state.currentPage < state.totalPages ? _paginationWidget(state, context) : const SizedBox.shrink(),
          ],
        );
      },
    );
  }

  Row _paginationWidget(MoviesState state, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (state.currentPage > 1)
          ElevatedButton(
            onPressed: () {
              context.read<MoviesBloc>().add(MoviesEvent.moviesPageChanged(page: state.currentPage - 1));
            },
            child: const Text('Previous Page'),
          ),
        Text('Page ${state.currentPage} of ${state.totalPages}'),
        ElevatedButton(
          onPressed: () {
            context.read<MoviesBloc>().add(MoviesEvent.moviesPageChanged(page: state.currentPage + 1));
            // scroll to top
          },
          child: const Text('Next Page'),
        ),
      ],
    );
  }
}
