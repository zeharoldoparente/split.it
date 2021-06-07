import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(title: 'Stream', created: DateTime.now(), value: 250, people: 2),
    EventModel(
        title: 'Churrasco', created: DateTime.now(), value: -50, people: 1),
    EventModel(
        title: 'Supermercado', created: DateTime.now(), value: -500, people: 3),
    EventModel(title: 'Futebol', created: DateTime.now(), value: 50, people: 6),
    EventModel(
        title: 'Bebidas', created: DateTime.now(), value: -50, people: 1),
    EventModel(
        title: 'Balada', created: DateTime.now(), value: 440, people: 10),
  ];
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...events
                  .map(
                    (e) => EventTileWidget(model: e),
                  )
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
