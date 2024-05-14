import 'dart:convert';

import 'package:cards/Detals.dart';
import 'package:cards/desk.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Desk> adesks = [];

  @override
  void initState() {
    super.initState();
    fetchDesk().then((value) {
      setState(() {
        adesks.addAll(value);
      });
    });
  }

  Future<List<Desk>> fetchDesk() async {
    var url = 'https://nikhiltaral.github.io/Cars/cars_data.json';
    var uri = Uri.parse(url);
    var response = await http.get(uri);

    List<Desk> desk = [];
    if (response.statusCode == 200) {
      var deskJson = json.decode(response.body);
      for (var item in deskJson) {
        desk.add(Desk.fromJson(item));
      }
    }
    return desk;
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:  Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue.shade900,
        title: Text('CarList'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(top: 20, right: 30, left: 30),
            color: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: Image.network(
                      adesks.isNotEmpty
                          ? adesks[index].image ?? 'image'
                          : 'image',
                      fit: BoxFit.fill,
                    ),
                    title: Text(
                      adesks.isNotEmpty
                          ? adesks[index].title ?? 'Title'
                          : 'Title',
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 25, color: Colors.blueGrey),
                    ),
                    trailing: IconButton(
                      onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detals(desk: adesks[index]),
                  ),
                );},
                      icon: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    subtitle: Text(
                      adesks.isNotEmpty
                          ? adesks[index].subtitle ?? 'Subtitle'
                          : 'Subtitle',
                      style: const TextStyle(color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    selectedColor: Colors.blue,
                    selected: true,
                    hoverColor: Colors.blue.shade200,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                  Text(
                    adesks.isNotEmpty
                        ? adesks[index].price ?? 'price'
                        : 'price',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: adesks.length,
      ),
    ),
    );
  }
}
