class ProductModel {
  int? id;
  String? pName;
  int? price;

  ProductModel({this.id, this.pName, this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pName = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': pName, 'price': price};
}
