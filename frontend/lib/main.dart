import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_bloc.dart';
import 'package:ssbek/src/bloc/team_list/team_list_event.dart';
import 'package:ssbek/src/pages/team_list_page.dart';
import 'package:ssbek/src/util/get_it_config.dart';

void main() {
  GetItConfig.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamListBloc()..add(TeamListRequestedEvent()),
      child: MaterialApp(
        title: 'SSbes',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
        ),
        home: const TeamListPage()
      ),
    );
  }
}
