import 'package:flutter/material.dart';
import 'car.dart';
import 'image.dart';

class ListCars extends StatefulWidget {
  const ListCars({super.key});

  @override
  State<ListCars> createState() => _ListCarsState();
}

class _ListCarsState extends State<ListCars> {
  String _text = 'Available Cars';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      width = width * 1.2;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(_text),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return Row(children: [
                SizedBox(width: width * 0.3),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          settings: RouteSettings(arguments: cars[index].image),
                          builder: (context) => const ShowImage()));
                    },
                    icon: const Icon(Icons.zoom_in)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _text =
                            'Model: ${cars[index].model} Price: ${cars[index].rentperDay}';
                      });
                    },
                    icon: const Icon(Icons.account_balance)),
                Text(cars[index].toString(),
                    style: const TextStyle(fontSize: 18))
              ]);
            }));
  }
}
