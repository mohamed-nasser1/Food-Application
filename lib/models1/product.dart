class Product {
  final int id, price;
  final String title, image, description;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.image,
      required this.description});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 60,
    title: "Kiwi juice",
    image: "images/k01.jpeg",
    description: '',
  ),
  Product(
    id: 2,
    price: 55,
    title: "Milkshake",
    image: "images/o01.jpeg",
    description: '',
  ),
  Product(
    id: 3,
    price: 40,
    title: "orange juice",
    image: "images/orange juice.png",
    description: '',
  ),
  Product(
    id: 4,
    price: 45,
    title: "Watermelon juice",
    image: "images/w01.jpeg",
    description: '',
  ),
];
