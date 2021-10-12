import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/bloc/child_nav/child_nav_route_bloc.dart';
import 'package:test_universal_search/bloc/root_nav/root_navigation_bloc.dart';
import 'package:test_universal_search/bloc/universal_search/universal_search_bloc.dart';
import 'package:test_universal_search/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RootNavigationBloc(),
        ),
        BlocProvider(
          create: (context) => ChildRouteBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<UniversalSearchBloc>(
          create: (context) => UniversalSearchBloc(
            rootNavigationBloc: context.read<RootNavigationBloc>(),
            itemRouteBloc: context.read<ChildRouteBloc>(),
          ),
          child: const Home(),
        ),
      ),
    );
  }
}