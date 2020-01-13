import 'dart:async';
import 'package:flutter_health_controller/features/account/data/models/account_model.dart';
import 'package:flutter_health_controller/features/account/domain/entities/account.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import './bloc.dart';

class AccountBloc extends HydratedBloc<AccountEvent, AccountState> {
  @override
  AccountState get initialState {
    return super.initialState ?? InitialAccountState();
  }

  @override
  AccountState fromJson(Map<String, dynamic> json) {
    try {
      final account = Account.fromJson(json);
      return AccountInitialized(account: account);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(AccountState state) {
    if (state is AccountInitialized) {
      return state.account.toJson();
    }

    return null;
  }

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async* {
    final currentState = state;

    if (currentState is InitialAccountState && event is InitAccount) {
      yield AccountInitialized(account: Account(name: '', birthday: null, height: null, weight: null, goalWeight: null));
      return;
    }

    if (currentState is AccountInitialized) {
      if (event is SetName) yield currentState.copyWith(name: event.name);
      if (event is SetBirthday) yield currentState.copyWith(birthday: event.date);
      if (event is SetHeight) yield currentState.copyWith(height: event.height);
      if (event is SetWeight) yield currentState.copyWith(weight: event.weight);
      if (event is SetGoalWeight) yield currentState.copyWith(goalWeight: event.weight);
    }
  }
}
