import 'package:flutter/material.dart';
import 'package:cards/desk.dart';

class Detals extends StatelessWidget {
  final Desk desk;

  const Detals({super.key, required this.desk});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(desk.image ?? 'image',height: 300,width: 400,),
            Text(
              desk.title ?? 'Title',
              style: const TextStyle(fontSize: 60),
            ),
            Text(desk.subtitle ?? 'Subtitle',style: TextStyle(color: Colors.black54),),
            Text(
              desk.price ?? 'Price',
              style: const TextStyle(fontSize: 40),
            ),
            Text(desk.type ?? 'type'), 
            Text(desk.Fuel ?? 'Fuel'),
            Text(desk.Dtitle ?? 'Dtitle'),
            Text(desk.description ?? 'description'), 
          ],
        ),
      ),
    ));
  }
}
