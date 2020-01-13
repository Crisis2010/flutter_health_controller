import 'package:flutter/material.dart';
import 'package:flutter_health_controller/features/catalog/domain/entities/catalog.dart';
import 'package:flutter_health_controller/features/catalog/presentation/widgets/catalog_list.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage();

  final entries = [
    Catalog(
      id: '0',
      title: 'Гамбургер',
      imageUrl: 'https://avatars.mds.yandex.net/get-pdb/69339/efaf915a-2a01-4000-be06-ee52b2622b1b/s1200?webp=false',
    ),
    Catalog(
      id: '1',
      title: 'Test1',
      imageUrl: 'https://avatars.mds.yandex.net/get-pdb/69339/efaf915a-2a01-4000-be06-ee52b2622b1b/s1200?webp=false',
    ),
    Catalog(
      id: '2',
      title: 'Test2',
      imageUrl: 'https://avatars.mds.yandex.net/get-pdb/69339/efaf915a-2a01-4000-be06-ee52b2622b1b/s1200?webp=false',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => CatalogList(entries[index]),
    );
  }
}
