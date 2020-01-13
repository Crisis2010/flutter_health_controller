import 'package:flutter_health_controller/features/account/domain/entities/account.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();
}

class InitAccount extends AccountEvent {
  final Account account;

  InitAccount({this.account});

  @override
  List<Object> get props => [account];

  @override
  String toString() => 'InitAccount { account: $account }';
}

class SetName extends AccountEvent {
  final String name;

  SetName({@required this.name});

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'SetName { name: $name }';
}

class SetBirthday extends AccountEvent {
  final DateTime date;

  SetBirthday({@required this.date});

  @override
  List<Object> get props => [date];

  @override
  String toString() => 'SetBirthday { date: $date }';
}

class SetHeight extends AccountEvent {
  final int height;

  SetHeight({@required this.height});

  @override
  List<Object> get props => [height];

  @override
  String toString() => 'SetHeight { height: $height }';
}

class SetWeight extends AccountEvent {
  final int weight;

  SetWeight({@required this.weight});

  @override
  List<Object> get props => [weight];

  @override
  String toString() => 'SetWeight { weight: $weight }';
}

class SetGoalWeight extends AccountEvent {
  final int weight;

  SetGoalWeight({@required this.weight});

  @override
  List<Object> get props => [weight];

  @override
  String toString() => 'SetGoalWeight { weight: $weight }';
}
