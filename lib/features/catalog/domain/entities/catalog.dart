import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Catalog extends Equatable {
  final String id;
  final String title;
  final String imageUrl;

  Catalog({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
  });

  @override
  List<Object> get props => [id, title, imageUrl];

  @override
  String toString() => 'Catalog { id: $id, title: $title, imageUrl: $imageUrl }';
}
