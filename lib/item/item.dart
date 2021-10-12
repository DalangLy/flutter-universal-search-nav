import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/bloc/child_nav/child_nav_route_bloc.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Item'),
          ElevatedButton(
            onPressed: (){
              BlocProvider.of<ChildRouteBloc>(context).add(const ChangeChildRoute(index: 1));
            },
            child: const Text('Add Item'),
          ),
        ],
      ),
    );
  }
}
