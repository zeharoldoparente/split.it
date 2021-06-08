import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(
      payment: 100,
      received: 50,
    );
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          title: 'Stream', created: DateTime.now(), value: 250, people: 2),
      EventModel(
          title: 'Churrasco', created: DateTime.now(), value: -50, people: 1),
      EventModel(
          title: 'Super', created: DateTime.now(), value: -500, people: 3),
      EventModel(
          title: 'Futebol', created: DateTime.now(), value: 50, people: 6),
      EventModel(
          title: 'Bebidas', created: DateTime.now(), value: -50, people: 1),
      EventModel(
          title: 'Balada', created: DateTime.now(), value: 440, people: 10),
    ];
  }
}































/* import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashboardModel> getDashboard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(
      payment: 20,
      recived: 100,
    );
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          title: 'Stream', created: DateTime.now(), value: 250, people: 2),
      EventModel(
          title: 'Churrasco', created: DateTime.now(), value: -50, people: 1),
      EventModel(
          title: 'Supermercado',
          created: DateTime.now(),
          value: -500,
          people: 3),
      EventModel(
          title: 'Futebol', created: DateTime.now(), value: 50, people: 6),
      EventModel(
          title: 'Bebidas', created: DateTime.now(), value: -50, people: 1),
      EventModel(
          title: 'Balada', created: DateTime.now(), value: 440, people: 10),
    ];
  }
}
 */