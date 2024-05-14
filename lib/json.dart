
import 'dart:convert';

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
    final String image;
    final String title;
    final String subtitle;
    final String type;
    final String fuel;
    final String price;
    final String dtitle;
    final String description;
    final String datumClass;

    Data({
        required this.image,
        required this.title,
        required this.subtitle,
        required this.type,
        required this.fuel,
        required this.price,
        required this.dtitle,
        required this.description,
        required this.datumClass, required List data,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        image: json["image"],
        title: json["title"],
        subtitle: json["subtitle"],
        type: json["type"],
        fuel: json["Fuel"],
        price: json["price"],
        dtitle: json["Dtitle"],
        description: json["description"],
        datumClass: json["class"], data: [],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "subtitle": subtitle,
        "type": type,
        "Fuel": fuel,
        "price": price,
        "Dtitle": dtitle,
        "description": description,
        "class": datumClass,
    };

  map(Data Function(dynamic item) param0) {}
}
