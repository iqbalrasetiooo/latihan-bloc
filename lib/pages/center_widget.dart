import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Center(
      child: BlocBuilder(
        bloc: myCounter,
        builder: (context, state) {
          return Text(
            '$state',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          );
        },
      ),
    );
  }
}
