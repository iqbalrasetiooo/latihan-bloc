import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class User extends Cubit<Map<String, dynamic>> {
  User() : super({"name": "", "age": 0});

  void changeName(String newName) {
    emit({
      "name": newName,
      "age": state['age'],
    });
  }

  void changeAge(int newAge) {
    emit({
      "name": state['name'],
      "age": newAge,
    });
  }
}
