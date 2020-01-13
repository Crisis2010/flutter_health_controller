import 'package:flutter/material.dart';

import 'package:flutter_health_controller/features/catalog/domain/entities/catalog.dart';

class CatalogDetailsPage extends StatelessWidget {
  CatalogDetailsPage(this.data);

  final Catalog data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                data.imageUrl,
                cacheHeight: 300,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                gaplessPlayback: true,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.grey[200],
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Presed');
        },
        tooltip: 'Добавить',
        child: Icon(Icons.add),
      ),
    );
  }
}
