import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/bloc/theme/theme_cubit.dart';
import 'package:ssbek/src/pages/team_list_page.dart';
import 'package:ssbek/src/util/get_it_config.dart';
import 'package:ssbek/src/util/scroll_behaviour.dart';

void main() {
  GetItConfig.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TeamListBloc>(
          create: (context) => TeamListBloc()..add(TeamListRequestedEvent()),
        ),
        BlocProvider<ThemeCubit>(
            create: (context) => ThemeCubit()
        )
      ],
      child: BlocBuilder<ThemeCubit, Brightness>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'SSbes',
            scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.yellow,
                  brightness: themeState
              )
            ),
            home: const TeamListPage()
          );
        }
      ),
    );
  }
}
