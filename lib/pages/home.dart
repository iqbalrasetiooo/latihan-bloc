import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    User userBloc = context.read<User>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Selector'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BlocSelector<User, Map<String, dynamic>, String>(
            selector: (state) => state['name'],
            builder: (context, state) {
              print('Nama Dibuildd');
              return Text('Nama : $state');
            },
          ),
          const SizedBox(height: 10),
          TextField(
            onChanged: (value) => userBloc.changeName(value),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          BlocSelector<User, Map<String, dynamic>, int>(
            selector: (state) => state['age'],
            builder: (context, state) {
              print('Umur Dibuildd');
              return Text('Umur : $state');
            },
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] - 1);
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] + 1);
                },
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
