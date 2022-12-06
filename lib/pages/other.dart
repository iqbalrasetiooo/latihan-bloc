import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    Counter mycounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: BlocBuilder(
          bloc: mycounter,
          builder: (context, state) {
            return Text(
              '$state',
              style: const TextStyle(fontSize: 60),
            );
          },
        ),
      ),
    );
  }
}
