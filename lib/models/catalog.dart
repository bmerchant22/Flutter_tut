class CatalogModel {
  static final items = [
    Item(220300, "Iphone 12 Pro", "For people who don't love their kidneys", 99999, "#33505a", "assets/images/iphone.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}