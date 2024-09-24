import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'core/router/routes.dart';
import 'core/theme/q_colors.dart';
import 'features/movies/presentation/bloc/data_connection/data_connection_bloc.dart';
import 'features/movies/presentation/bloc/genres/genres_bloc.dart';
import 'features/movies/presentation/bloc/movies/movies_bloc.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  void _onDestinationSelected(int index) {
    if (index == 0) {
      context.go(Routes.home);
    } else {
      context.go(Routes.favorites);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DataConnectionBloc, DataConnectionState>(
        listener: (context, state) {
          if (state.status == InternetStatus.disconnected) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(hours: 3),
                content: Text('No internet connection'),
                backgroundColor: QColors.error,
              ),
            );
          }

          if (state.status == InternetStatus.connected) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Back online'),
                backgroundColor: QColors.success,
              ),
            );
            final page = context.read<MoviesBloc>().state.currentPage;
            context.read<MoviesBloc>().add(MoviesEvent.getMovies(page: page));
            context.read<GenresBloc>().add(const GenresEvent.getGenres());
          }
        },
        listenWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: state.status == InternetStatus.connected
                      ? const Icon(Icons.wifi, color: Colors.green)
                      : const Icon(Icons.wifi_off, color: QColors.error),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/img-logo.svg', width: 28, height: 28),
              ),
            ),
            bottomNavigationBar: DefaultTabController(
              length: 2,
              child: TabBar(
                onTap: _onDestinationSelected,
                indicator: TopIndicator(),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 19),
                // indicatorPadding: const EdgeInsets.all(8),
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.home,
                    ),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.bookmark_added_outlined),
                    text: 'Favourites',
                  ),
                ],
              ),
            ),
            body: widget.child,
          );
        });
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = QColors.primary
      ..strokeWidth = 3
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), paint);
  }
}
