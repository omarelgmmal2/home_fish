class MyOrderModel {
  final String title, date, image;
  final double price;

  MyOrderModel({
    required this.title,
    required this.date,
    required this.image,
    required this.price,
  });
}

List<MyOrderModel> list = [
  MyOrderModel(
      title: "Fried shrimp sandwich",
      date: "1/10/2024",
      image: "assets/images/sandawish.png",
      price: 120.0,
  ),
  MyOrderModel(
      title: "Fried shrimp sandwich",
      date: "2/10/2024",
      image: "assets/images/sandawish.png",
      price: 125.0,
  ),
  MyOrderModel(
      title: "Fried shrimp sandwich",
      date: "3/10/2024",
      image: "assets/images/sandawish.png",
      price: 130.0,
  ),
];

class SandwichModel {
  final String title,image;
  final double price;

  SandwichModel({
    required this.title,
    required this.image,
    required this.price,
  });
}

List<SandwichModel> sandwichList = [
  SandwichModel(
    title: "Fried shrimp sandwich",
    image: "assets/images/sandawish.png",
    price: 120.0,
  ),
  SandwichModel(
    title: "Fried shrimp sandwich",
    image: "assets/images/sandawish.png",
    price: 125.0,
  ),
  SandwichModel(
    title: "Fried shrimp sandwich",
    image: "assets/images/sandawish.png",
    price: 130.0,
  ),SandwichModel(
    title: "Fried shrimp sandwich",
    image: "assets/images/sandawish.png",
    price: 130.0,
  ),SandwichModel(
    title: "Fried shrimp sandwich",
    image: "assets/images/sandawish.png",
    price: 130.0,
  ),
];

class MyCartModel {
  final String title,image;
  final double price;

  MyCartModel({
    required this.title,
    required this.image,
    required this.price,
  });
}

List<MyCartModel> cartList = [
  MyCartModel(
      title: "squid casserole with red sauce",
      image: "assets/images/download-removebg-preview 3.png",
      price: 180,
  ),
  MyCartModel(
      title: "squid casserole with red sauce",
      image: "assets/images/download-removebg-preview 3.png",
      price: 200,
  ),
  MyCartModel(
      title: "squid casserole with red sauce",
      image: "assets/images/download-removebg-preview 3.png",
      price: 200,
  ),
];

class TodayOrders{
  final String title,image;
  final double price;
  TodayOrders({
    required this.title,
    required this.image,
    required this.price,
  });
}

List<TodayOrders> todayList = [
  TodayOrders(
    title: "Fried shrimp sandwich",
    image: "assets/images/download-removebg-preview 3.png",
    price: 120.0,
  ),TodayOrders(
    title: "Fried shrimp sandwich",
    image: "assets/images/download-removebg-preview 3.png",
    price: 120.0,
  ),
  TodayOrders(
    title: "Fried shrimp sandwich",
    image: "assets/images/download-removebg-preview 3.png",
    price: 120.0,
  ),
  TodayOrders(
    title: "Fried shrimp sandwich",
    image: "assets/images/download-removebg-preview 3.png",
    price: 125.0,
  ),
  TodayOrders(
    title: "Fried shrimp sandwich",
    image: "assets/images/download-removebg-preview 3.png",
    price: 130.0,
  ),
];