import 'package:equatable/equatable.dart';

abstract class CatalogState extends Equatable {
  const CatalogState();
}

class InitialCatalogState extends CatalogState {
  @override
  List<Object> get props => [];
}
