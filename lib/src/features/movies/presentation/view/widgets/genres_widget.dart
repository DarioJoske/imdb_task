import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/q_colors.dart';
import '../../../domain/entities/movie.dart';
import '../../bloc/genres/genres_bloc.dart';

class GenresWidget extends StatefulWidget {
  const GenresWidget({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  State<GenresWidget> createState() => _GenresWidgetState();
}

class _GenresWidgetState extends State<GenresWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresBloc, GenresState>(builder: (context, state) {
      if (state.status == GenresStatus.initial) {
        return const SizedBox.shrink();
      } else if (state.status == GenresStatus.loading) {
        return const SizedBox.shrink();
      }
      return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Wrap(
          runSpacing: 4,
          spacing: 4,
          children: widget.movie.genreIds
              .map((e) => Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    color: WidgetStateProperty.all(QColors.primaryFaded),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    side: const BorderSide(color: QColors.primaryFaded, width: 0),
                    label: Text(
                      state.genres!.firstWhere((element) => element.id == e).name,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                    ),
                  ))
              .toList(),
        ),
      );
    });
  }
}
