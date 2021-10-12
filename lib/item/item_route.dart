import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/bloc/child_nav/child_nav_route_bloc.dart';
import 'package:test_universal_search/item/add_item.dart';
import 'package:test_universal_search/item/item.dart';

class ItemRoute extends StatefulWidget {
  const ItemRoute({Key? key}) : super(key: key);

  @override
  State<ItemRoute> createState() => _ItemRouteState();
}

class _ItemRouteState extends State<ItemRoute> {
  final List<Widget> itemRoutes = [
    const Item(),
    const AddItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChildRouteBloc, ChildRouteState>(
      builder: (context, state) {
        print(state);
        if(state is ChildRouteChanged){
          return itemRoutes.elementAt(state.index);
        }
        return itemRoutes.first;
      },
    );
  }
}
