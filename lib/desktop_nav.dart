import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/bloc/root_nav/root_navigation_bloc.dart';

class DesktopNav extends StatelessWidget {
  const DesktopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ListTile(
            title: const Text('Dashboard'),
            onTap: (){
              BlocProvider.of<RootNavigationBloc>(context).add(const ChangeRoute(index: 0));
            },
          ),
          ListTile(
            title: const Text('Item'),
            onTap: (){
              BlocProvider.of<RootNavigationBloc>(context).add(const ChangeRoute(index: 1));
            },
          )
        ],
      ),
    );
  }
}
