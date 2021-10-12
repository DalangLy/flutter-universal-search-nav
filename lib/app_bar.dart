import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_universal_search/bloc/universal_search/universal_search_bloc.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElevatedButton(
            onPressed: (){
              BlocProvider.of<UniversalSearchBloc>(context).add(const UniversalChangeRoute(index: 0,));
            },
            child: const Text('Dashboard'),
          ),
          const SizedBox(width: 10,),
          ElevatedButton(
            onPressed: (){
              BlocProvider.of<UniversalSearchBloc>(context).add(const UniversalChangeRoute(index: 1,));
            },
            child: const Text('Item'),
          ),
          const SizedBox(width: 10,),
          ElevatedButton(
            onPressed: (){
              BlocProvider.of<UniversalSearchBloc>(context).add(const UniversalChangeParentRoute(parentIndex: 1, childIndex: 1));
            },
            child: const Text('Add Item'),
          )
        ],
      ),
    );
  }
}
