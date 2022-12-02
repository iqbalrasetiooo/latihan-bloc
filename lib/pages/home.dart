import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/pages/center_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 100,
                    width: 50,
                    // color: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        myCounter.decrement();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
                child: CenterWidget(),
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 100,
                    width: 50,
                    // color: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        myCounter.increment();
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
