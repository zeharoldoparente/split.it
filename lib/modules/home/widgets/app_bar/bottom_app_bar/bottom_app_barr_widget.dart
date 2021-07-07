import 'package:flutter/material.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

import '../../info_card_widget.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  final controller = AppBarController(repository);

//provision moviment
  static HomeRepository? get repository => null;

  @override
  void initState() {
    controller.getDashboard(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.state.runtimeType) {
      case AppBarStateLoading:
        {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoCardWidget(
                value: 0,
                isLoading: false,
              ),
              SizedBox(
                width: 25,
              ),
              InfoCardWidget(
                value: 0,
                isLoading: false,
              )
            ],
          );
        }
      case AppBarStateSucess:
        {
          final dashboard = (controller.state as AppBarStateSucess).dashboard;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoCardWidget(
                value: dashboard.received,
                isLoading: true,
              ),
              SizedBox(
                width: 25,
              ),
              InfoCardWidget(
                value: -dashboard.payment,
                isLoading: true,
              )
            ],
          );
        }
      case AppBarStateFailure:
        {
          final message = (controller.state as AppBarStateFailure).message;
          return Text(message);
        }

      default:
        {
          return Container();
        }
    }
  }
}
