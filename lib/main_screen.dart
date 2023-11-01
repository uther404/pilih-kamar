import 'package:flutter/material.dart';
import 'package:pilihkamar/detail_screen.dart';
import 'package:pilihkamar/model/room_detail.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Aplikasi Pemilihan Kamar'),
            backgroundColor: const Color.fromARGB(255, 65, 65, 65),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const ListKamarApp();
              } else if (constraints.maxWidth <= 1200) {
                return const ListKamarGrid(gridCount: 4);
              } else {
                return const ListKamarGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class ListKamarGrid extends StatelessWidget {
  final int gridCount;

  const ListKamarGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: listKamarApp.map((place) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      place.detail,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListKamarApp extends StatelessWidget {
  const ListKamarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final ListKamar place = listKamarApp[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(place.detail),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: listKamarApp.length,
      ),
    );
  }
}
