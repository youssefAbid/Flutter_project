class Product {
  String id;
  String name;
  double price;
  double discountPrice;

  String description;
  String ingredients;
  String capacity;
  String unit;
  String packageItemsCount;
  bool featured;
  bool deliverable;


  //Product();


  Product(
      this.id,
      this.name,
      this.price,
      this.discountPrice,
      this.description,
      this.ingredients,
      this.capacity,
      this.unit,
      this.packageItemsCount,
      this.featured,
      this.deliverable);

  Product.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'].toString();
      name = jsonMap['name'];
      price = jsonMap['price'] != null ? jsonMap['price'].toDouble() : 0.0;
      discountPrice = jsonMap['discount_price'] != null ? jsonMap['discount_price'].toDouble() : 0.0;
      price = discountPrice != 0 ? discountPrice : price;
      discountPrice = discountPrice == 0 ? discountPrice : jsonMap['price'] != null ? jsonMap['price'].toDouble() : 0.0;
      description = jsonMap['description'];
      capacity = jsonMap['capacity'].toString();
      unit = jsonMap['unit'] != null ? jsonMap['unit'].toString() : '';
      packageItemsCount = jsonMap['package_items_count'].toString();
      featured = jsonMap['featured'] ?? false;
      deliverable = jsonMap['deliverable'] ?? false;
    } catch (e) {
      id = '';
      name = '';
      price = 0.0;
      discountPrice = 0.0;
      description = '';
      capacity = '';
      unit = '';
      packageItemsCount = '';
      featured = false;
      deliverable = false;
      print(e);
    }
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["price"] = price;
    map["discountPrice"] = discountPrice;
    map["description"] = description;
    map["capacity"] = capacity;
    map["package_items_count"] = packageItemsCount;
    return map;
  }

  // double getRate() {
  //   double _rate = 0;
  //   productReviews.forEach((e) => _rate += double.parse(e.rate));
  //   _rate = _rate > 0 ? (_rate / productReviews.length) : 0;
  //   return _rate;
  // }

  @override
  bool operator ==(dynamic other) {
    return other.id == this.id;
  }

  @override
  int get hashCode => this.id.hashCode;
}
