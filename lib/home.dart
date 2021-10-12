import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/app_bar.dart';
import 'package:test_universal_search/bloc/root_nav/root_navigation_bloc.dart';
import 'package:test_universal_search/dashboard.dart';
import 'package:test_universal_search/desktop_layout.dart';
import 'package:test_universal_search/desktop_nav.dart';
import 'package:test_universal_search/item/item_route.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Widget> routes = [
    const Dashboard(),
    const ItemRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return DesktopLayout(
      appBar: const DesktopAppBar(),
      nav: const DesktopNav(),
      body: BlocBuilder<RootNavigationBloc, RootNavigationState>(
        builder: (context, state) {
          print(state);
          if(state is RouteChanged){
            return routes.elementAt(state.index);
          }
          return const Dashboard();
        },
      ),
    );
  }
}
