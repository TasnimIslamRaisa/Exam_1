void displayFruitDetails(List<Map> fruits) {
  for (int i = 0; i < fruits.length; i++) {
    print(
        "Name: ${fruits[i]['name']}, Color: ${fruits[i]['color']}, Price: \$${fruits[i]['price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map> fruits, double DisPercent) {
  for (int i = 0; i < fruits.length; i++) {
    double p = fruits[i]['price'];
    double dp = p - (p * DisPercent / 100);
    fruits[i]['price'] = dp;
  }
}

void main() {
  List<Map> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  print('Original Fruit Details Before Discount :');
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("Fruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}
