import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/catalog.dart';

@JsonSerializable()
class CatalogModel extends Catalog {
  CatalogModel({
    @required String id,
    @required String title,
    @required String imageUrl,
  });

  // factory CatalogModel.fromJson(Map<String, dynamic> json) => _$CatalogModelFromJson(json);
  // Map<String, dynamic> toJson() => _$CatalogModelToJson(this);

  @override
  List<Object> get props => [id, title, imageUrl];
}
