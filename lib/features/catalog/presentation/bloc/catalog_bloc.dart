import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  @override
  CatalogState get initialState => InitialCatalogState();

  @override
  Stream<CatalogState> mapEventToState(CatalogEvent event) async* {
    // TODO: Add Logic
  }
}
