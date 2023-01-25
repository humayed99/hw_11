class ProductsData {
  static List<Product> products = [
    Product(
        image: 'https://cdn.salla.sa/Aedxd/1eLyRC9t4ruzkgLoMOn6arsu9GAXAeugpNBEjCyi.jpg',
        name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية',
        price: '٢٧ ر.س'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/izIx9SNHqUwoeNRlZRjH0UO3sc9idcN65FFJEbPH.jpg',
        name: 'طارد البعوض طبيعي من زيوت عشبية',
        price: '٢٥ ر.س'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/TmuM4FVQof6kSoJYLEbaM82casXt00ZakLG8qES5.jpg',
        name: 'طارد النمل طبيعي من زيوت عشبية',
        price: ' ٢٧'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/TyxHLOCxpxu2voxFZSPHTPOqzINVaH5hoYMhmpQe.jpg',
        name: ' ريحان جنفيز',
        price: '١٠ ر.س'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/rUu53jL0OzTyNVnBk91fj9VzocMoEvudyXf107Sn.jpg',
        name: 'بذور يارو سيريس كوين "أخيليا"',
        price: '١٠ ر.س')
  ];
  static List<Product> cart = [];
}

class Product {
  String image;
  String name;
  String price;
  Product({required this.image, required this.name, required this.price});
}
