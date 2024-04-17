class MainModel {
  final String name, image;
  final double price;

  MainModel({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<MainModel> list = [
  MainModel(
      name: "squid casserole with\n red sauce",
      image: "assets/images/sandawish.png",
      price: 120.0,
  ),
  MainModel(
    name: "squid casserole with\n red sauce",
    image: "assets/images/sandawish.png",
    price: 130.0,
  ),
  MainModel(
    name: "squid casserole with\n red sauce",
    image: "assets/images/sandawish.png",
    price: 135.0,
  ),
  MainModel(
    name: "squid casserole with\n red sauce",
    image: "assets/images/sandawish.png",
    price: 140.0,
  ),
];