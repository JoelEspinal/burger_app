import 'dart:convert';

class Ingredient {
  String name;
  double price;
  String url;
  
  Ingredient({
    required this.name,
    required this.price,
    required this.url,
  });

  Ingredient copyWith({
    String? name,
    double? price,
    String? url,
  }) {
    return Ingredient(
      name: name ?? this.name,
      price: price ?? this.price,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'url': url,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      name: map['name'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredient.fromJson(String source) => Ingredient.fromMap(json.decode(source));

  @override
  String toString() => 'Ingredient(name: $name, price: $price, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Ingredient &&
      other.name == name &&
      other.price == price &&
      other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ url.hashCode;
}
