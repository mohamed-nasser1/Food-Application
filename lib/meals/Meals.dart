class Meals {
  final int id, price;
  final String title, descrption, image;
  Meals(
      {required this.id,
      required this.price,
      required this.title,
      required this.descrption,
      required this.image});
}

List<Meals> meals = [
  Meals(
    id: 1,
    price: 90,
    title: 'GrilledChicken',
    descrption: 'Grilledchicken with green vegetables',
    image: 'images/GrilledChicken.jpg',
  ),
  Meals(
    id: 2,
    price: 110,
    title: 'GrilledMeet',
    descrption: 'Grilledmeet with botato and beans',
    image: 'images/GrilledMeet.jpg',
  ),
  Meals(
    id: 3,
    price: 70,
    title: 'FriedNoodles',
    descrption: 'Friednoodles with hot sauce',
    image: 'images/FriedNoodles.jpg',
  ),
];
