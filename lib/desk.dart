class Desk {
  String? title;
  String? subtitle;
  String? image;
  String? price;
  String? type;
  String? Fuel;
  String? Dtitle;
  String? description;

  Desk(this.title, this.subtitle, this.image, this.price, this.type, this.Fuel,
      this.Dtitle, this.description);

  Desk.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    image = json['image'];
    price = json['price'];
    Fuel = json['Fuel'];
    type = json['type'];
    Dtitle = json['Dtitle'];
    description = json['descrip'];
  }
}
