class StockModel {
  List<Stock>? stock;

  StockModel({this.stock});

  StockModel.fromJson(Map<String, dynamic> json) {
    stock = (json['Stock'] as List<dynamic>?)
        ?.map((v) => Stock.fromJson(v as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (stock != null) {
      data['Stock'] = stock!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stock {
  List<Medicines>? medicines;

  Stock({this.medicines});

  Stock.fromJson(Map<String, dynamic> json) {
    medicines = (json['medicines'] as List<dynamic>?)
        ?.map((v) => Medicines.fromJson(v as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (medicines != null) {
      data['medicines'] = medicines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Medicines {
  String? name;
  int? quantity;
  String? images;
  int? numberStock;

  Medicines({this.name, this.quantity, this.images});

  Medicines.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    quantity = json['quantity'] as int?;
    images = json['images'] as String?;
    numberStock = json['numberStock'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['quantity'] = quantity;
    data['images'] = images;
    data['numberStock'] = numberStock;
    return data;
  }
}
