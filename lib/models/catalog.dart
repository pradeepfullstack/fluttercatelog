class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 12 pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#3305a",
        image:
            "https://www.citypng.com/public/uploads/preview/hd-apple-iphone-13-pro-back-view-png-31631654619h1mbyaiqol.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
