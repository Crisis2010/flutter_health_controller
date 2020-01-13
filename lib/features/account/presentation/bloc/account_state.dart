import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

import 'package:flutter_health_controller/features/account/domain/entities/account.dart';
import 'package:flutter_health_controller/features/account/data/models/account_model.dart';

abstract class AccountState extends Equatable {
  const AccountState();
}

class InitialAccountState extends AccountState {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'InitialAccountState';
}

class AccountError extends AccountState {
  final String message;

  AccountError({@required this.message});

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'AccountError { message: $message }';
}

class AccountInitialized extends AccountState {
  final Account account;

  AccountInitialized({@required this.account});

  AccountInitialized copyWith({String name, DateTime birthday, int height, int weight, int goalWeight}) {
    return AccountInitialized(
      account: Account(
        name: name ?? this.account.name,
        birthday: birthday ?? this.account.birthday,
        height: height ?? this.account.height,
        weight: weight ?? this.account.weight,
        goalWeight: goalWeight ?? this.account.goalWeight,
      ),
    );
  }

  @override
  List<Object> get props => [account];

  @override
  String toString() => 'AccountInitialized { account: $account }';
}
