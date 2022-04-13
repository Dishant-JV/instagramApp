class CheckUpdateModel {
  int? id;
  String? image;
  String? name;
  int? price;
  int? qty;
  int? isAdd;

  CheckUpdateModel({this.id, this.image, this.name, this.price, this.qty,this.isAdd});

  CheckUpdateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    qty = json['qty'];
    isAdd=json['isadd'];
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'image': image, 'price': price, 'qty': qty,'isadd':isAdd};
}
