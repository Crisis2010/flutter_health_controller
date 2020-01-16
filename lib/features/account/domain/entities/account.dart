import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Account extends Equatable {
  final String name;
  final DateTime birthday;
  final int height;
  final int weight;
  final int goalWeight;

  Account({
    @required this.name,
    @required this.birthday,
    @required this.height,
    @required this.weight,
    @required this.goalWeight,
  });

  @override
  List<Object> get props => [name, birthday, height, weight, goalWeight];

  @override
  String toString() => 'Account { name: $name, birthday: $birthday, height: $height, weight: $weight, goalWeight: $goalWeight }';
}
