//! if super class have required parameter

class ProductDetails {
  final String name;
  final String brand;
  final int price;
  final double rating;

  const ProductDetails({
    required this.name,
    required this.brand,
    required this.price,
    required this.rating,
  });

  printPrice() {
    print("$price this price print from super class");
  }
}

class ElectronicProduct extends ProductDetails {
  final int warrantyPeriod; // in months
  final double batteryLife; // in hours

  const ElectronicProduct({
    required String name,
    required String brand,
    required int price,
    required double rating,
    required this.warrantyPeriod,
    required this.batteryLife,
  }) : super(
          name: name,
          brand: brand,
          price: price,
          rating: rating,
        );
}

void main() {
  ElectronicProduct e1 = ElectronicProduct(
      name: "Tv",
      brand: "sony",
      price: 200,
      rating: 3.4,
      warrantyPeriod: 1,
      batteryLife: 6);

  e1.printPrice();
}
