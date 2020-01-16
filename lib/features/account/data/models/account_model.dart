import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/account.dart';

part 'account_model.g.dart';

@JsonSerializable()
class AccountModel extends Account {
  AccountModel({
    @required String name,
    @required DateTime birthday,
    @required int height,
    @required int weight,
    @required int goalWeight,
  }) : super(name: name, birthday: birthday, height: height, weight: weight, goalWeight: goalWeight);

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
  Map<String, dynamic> toJson() => _$AccountModelToJson(this);

  @override
  List<Object> get props => [name, birthday, height, weight, goalWeight];
}
