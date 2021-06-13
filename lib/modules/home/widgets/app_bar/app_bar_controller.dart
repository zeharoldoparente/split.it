import 'package:flutter/material.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarController {
  late HomeRepository repository;

  AppBarState state = AppBarStateEmpty();

  AppBarController() {
    repository = HomeRepositoryMock();
  }

  getDashboard(VoidCallback update) async {
    state = AppBarStateLoading();
    final response = await repository.getDashboard();
    state = AppBarStateSucess(dashboard: response);
    update();
  }
}
