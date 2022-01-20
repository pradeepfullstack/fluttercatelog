// ignore_for_file: unnecessary_getters_setters

import 'package:fluttercatelog/models/catalog.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

// collection of IDs or Store ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) => _catalog = newCatalog;

  Iterable<Item> get items =>
      _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
